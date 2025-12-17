#include <game.h>
#include <string.h>
#include <stdbool.h>
#include "segmentlcd.h"
#include "caplesense.h"
#include "segmentlcd_individual.h"
#include "sl_udelay.h"
#include "em_device.h"
#include "em_cmu.h"
#include <stdlib.h>

 // Nehézségi szint szöveges kiírása
void print_diff(game_state *state) {
  switch (state->difficulty) {
    case EASY:
      SegmentLCD_Write("EASY");
      break;
    case MEDIUM:
      SegmentLCD_Write("MEDIUM");
      break;
    case HARD:
      SegmentLCD_Write("HARD");
      break;
    default: break;
}
}

// SysTick timer megszakításainak a periódusidejének meghatározásához szükséges konstansok
// CoreCLK*prescale -> minél kisebb a szám, annál gyakrabban vannak megszakítások -> annál nehezebb a játék
double get_prescale(game_state *state) {
  double prescale = 0;
  switch(state->difficulty) {
    case EASY:
       prescale = 1;
       break;
    case MEDIUM:
       prescale = 0.75;
       break;
    case HARD:
       prescale = 0.5;
       break;
    default: break;
  }
  return prescale;
}


void game_init(game_state *state) {
  while(state->game_running == false) {

      // Érintő csúszka poziciójánek lekérése
      uint8_t slider_position = CAPLESENSE_getSliderPosition();
      // Játék nehézségének a meghatározása
      if((slider_position == 255) & (state->difficulty == UNDEFINED)) {
          // Válasszon a játékos a 3 szint közül
          SegmentLCD_Write("Lvl1-3");
      }

      // Csak akkor updatelje a nehézséget, ha hozzáértünk az érintőcsúszkához, egyébként maradjon ugyanott, "jegyezze meg"
      else if(slider_position != 255) {
          state->difficulty = (slider_position - 1) / 16;
          print_diff(state);
      }
      else
          print_diff(state);
      }

    // Kiválasztott nehézségi szintek alapján meghatározzuk a banánok esésének a sebességét
    uint32_t coreclk = SystemCoreClockGet();
    SysTick_Config(coreclk * get_prescale(state));

    // Felső numerikus kijelzőn a [leesett banánok: elkapott banánok] kijelzéséhez inicializálás
    // Szám
    SegmentLCD_Number(0000);
    // ":"
    SegmentLCD_Symbol(LCD_SYMBOL_COL10, 1);
    }


void game_running(game_state *state, bool *tick) {

  // Érintőcsúszkából az értékek kiolvasása
  uint8_t slider = CAPLESENSE_getSliderPosition();

  // Akkor mozogjon a kosár, ha hozzáérünk, egyébként "megjegyzi állapotát"
  if(slider != 255) {
  // Alső szegmenssor frissítése, előző állapot törlése
  for(int i = 0; i < SEGMENT_LCD_NUM_OF_LOWER_CHARS; i++) {
      state->seg[i].d = 0;
    }
    // Új állapot kijelzése
    state->seg[slider/8].d = 1;
    // Előző slider állapot mentése, hogy a kosarat meg lehessen különböztetni a banánoktől
    state->last_sliderposition = slider;
  }

  // A banánok pozíciójának kijelzése
  SegmentLCD_LowerSegments(state->seg);
  // Eddigi teljesítmény kijelzése
  SegmentLCD_Number((state->no_of_bananas*100 + state->score));

  // Fix időintervallumonként "továbbléptetés" (SysTick-el meghatározva)
  if(*tick) {
    game_tick(state);
    *tick = false;
  }
}


void game_tick(game_state *state) {
  for(int i = 0; i < SEGMENT_LCD_NUM_OF_LOWER_CHARS; i++) {
            if((state->last_sliderposition/8) != i){
            state->seg[i].d = 0;
            }
        }
      // Elkezd leesni a banán - felső függőleges szegmens
      for(int i = 0; i < SEGMENT_LCD_NUM_OF_LOWER_CHARS; i++) {
      if(state->seg[i].a == 1) {
          state->seg[i].a = 0;
          state->seg[i].j = 1;
          }
      // Esik le tovább a banán - alsó függőleges szegmens
      else if(state->seg[i].j == 1) {
          state->seg[i].j = 0;
          state->seg[i].p = 1;
          }
      // leesett a banán, ellenőrzőm, hogy elkaptuk-e - nem kaptuk el
      else if((state->seg[i].p == 1) & (state->seg[i].d == 0)){
          state->seg[i].p = 0;
          state->seg[i].d = 1;
          state->no_of_bananas += 1;
      }
      // leesett a banán, ellenőrzőm, hogy elkaptuk-e - elkaptuk
      else if((state->seg[i].d == 1) & (state->seg[i].p == 1)) {
              state->seg[i].p = 0;
              state->score += 1;
              state->no_of_bananas += 1;
      }
}

  // Megjelenik a "banán" a fa tetején
  int random_num = rand();
  // Ellenőrizzük, hogy abban az "oszlopban" éppen van-e banán, ha igen akkor új random számot generáluk addig, amíg
  // olyan "oszlopot" kapunk, ahol nem található még banán
  if((state->seg[random_num % 8].a == 1) | ((state->seg[random_num % 8].j == 1) | (state->seg[random_num % 8].p == 1)))
    while(1) {
        random_num = rand();
        if(state->seg[random_num % 8].a != 1)
          break;
    }
  else
    state->seg[random_num % 8].a = 1;
}
