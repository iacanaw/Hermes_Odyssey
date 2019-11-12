/*
 * lifeGame.h
 *
 *  Created on: 12/11/2019
 *      Author: iaçanã
 */

#ifndef PROD_CONS_STD_H_
#define PROD_CONS_STD_H_

#define N_ITERATIONS 10
#define ALIVE	0
#define DEAD    1

#define RUNNER_DIM_X    11
#define RUNNER_DIM_Y    11
#define RUNNERS_X       3
#define RUNNERS_Y       3
#define DIM_X           RUNNER_DIM_X*RUNNERS_X
#define DIM_Y           RUNNER_DIM_Y*RUNNERS_Y

unsigned int board[DIM_X][DIM_Y];

unsigned int seed = 123456789;

unsigned int rand(){
    unsigned int m = 2147483648;
    unsigned int a = 1103515245;
    unsigned int c = 12345;
    seed = (a * seed + c) % m;
    return seed;
}

#endif /* PROD_CONS_STD_H_ */
