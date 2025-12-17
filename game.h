#ifndef GAME_H_
#define GAME_H_
#include <stdbool.h>
#include "segmentlcd_individual.h"
/*******************************************************************************
 ********************************   ENUMS   ************************************
 ******************************************************************************/
#include <stdbool.h>

typedef enum {
  UNDEFINED = -1,
  EASY = 0,
  MEDIUM = 1,
  HARD = 2
} Difficulty;

//A játék állapotának számon tartása
typedef struct game_state{
  Difficulty difficulty;
  bool game_running;
  int score;
  SegmentLCD_LowerCharSegments_TypeDef seg[SEGMENT_LCD_NUM_OF_LOWER_CHARS];
  int last_sliderposition;
  int no_of_bananas;
} game_state;

void print_diff(game_state *state);

void game_init(game_state *state);

void game_running(game_state *state, bool *tick);

void game_tick(game_state *state);

#endif /* GAME_H_ */
