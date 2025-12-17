/***************************************************************************//**
 * @file
 * @brief Top level application functions
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

/***************************************************************************//**
 * Initialize application.
 ******************************************************************************/
#include "segmentlcd.h"
#include "caplesense.h"
#include "game.h"
#include "sl_simple_button.h"
#include "sl_simple_button_instances.h"
#include "sl_udelay.h"
#include <stdlib.h>

game_state state = {UNDEFINED, false, 0, {{0}}, 0, 0};
bool tick = false;


// A játék nehézsége abban rejlik, hogy milyen gyrosan esnek le a banánok, emiatt
// Előre meghatározott időnként kell frissíteni a kijelzőt, ezt a SysTick-el valósítottuk meg
void SysTick_Handler(void)
{
  // IT-ben csak jelzem, hogy game_running fv.-ben frissiteni kell a kijelzőt, magát a frissítést nem
  // IT-ben valósítom meg
  if(state.game_running == true)
    tick = true;
}


void app_init(void)
{
  // LCD inicializálása
  SegmentLCD_Init(false);
  // Kapacitív csúszka inicializálása
  CAPLESENSE_Init(false);
}

// A nyomógomb megnyomásának hatására választjuk ki a nehézséget
void sl_button_on_change (const sl_button_t * handle)
{
  if (handle == &sl_button_btn1) {
      if( sl_button_get_state(handle) == SL_SIMPLE_BUTTON_PRESSED) {
          }
      else {
        // akkor legyen végleges a választás, ha felengedjük a nyomógombot
        if((state.game_running == false) & (state.difficulty != UNDEFINED))
        state.game_running = true;
      }
    }
}
/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void) {

  // A nehézség kiválsztása a játék elindításához
  if(state.game_running== false)
  // Játék nehézségét beállító fv.
  game_init(&state);

  //véletlen értékkel indítjuk a random szám generálást
  uint32_t seed = SysTick->VAL;
  srand(seed);

  // A játék logikája
  game_running(&state, &tick);

  // A specifikációban meghatározott számú leesett banánnál alaphelyzetbe áll a játék,
  // hogy el lehessen indítani újra reset nélkül
  if(state.no_of_bananas == 25) {
     // Felső kijelző kikapcsolása
     SegmentLCD_NumberOff();
     // Felső kijelzőn a ":" kikapcsolása
     SegmentLCD_Symbol(LCD_SYMBOL_COL10, 0);
     // Játék leáll
     state.game_running = false;
     // Nehézség újboli kiválasztásához a korábbi nehézség törlése
     state.difficulty = UNDEFINED;

     // Előző játék eredményének kijelzése
     SegmentLCD_Write("score");
     // Késleltetés, hogy olvasható legyen az eredmény
     sl_udelay_wait(1000000);
     SegmentLCD_LowerNumber(state.score);
     sl_udelay_wait(1000000);
     // eredmény alaphelyzetbe állítása
     state.score = 0;
     state.no_of_bananas = 0;
  }
}
