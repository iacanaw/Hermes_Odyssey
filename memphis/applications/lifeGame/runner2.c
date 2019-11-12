/*
 * runner1.h
 *
 *  Created on: 12/11/2019
 *      Author: iaçanã
 */
//		
//      _________________________________________________
//      |				|				|				|
//      |	 runner7	|	runner8		|	 runner9	|
//      |		02		|	  12		|		22		|
//      _________________________________________________
//      |				|				|				|
//      |	 runner4	|	runner5		|	 runner6	|
//      |		01		|	  11		|		12		|
//      _________________________________________________
//      |				|				|				|
//      |	 runner1	|	runner2		|	 runner3	|
//      |		00		|	  10		|		20		|
//
//
//
//
#include <api.h>
#include <stdlib.h>
#include "lifeGame.h"

unsigned int myBoard[RUNNER_DIM_X][RUNNER_DIM_Y];
unsigned int myX = 1;
unsigned int myY = 0;
Message msg;

void checkCell(unsigned int x, unsigned int y){
	unsigned int nextX = x;
	unsigned int nextY = y;
	unsigned int countAlive = 0;
	unsigned int countDead = 0;
	x = x+(RUNNER_DIM_X*myX);
	y = y+(RUNNER_DIM_Y*myY);
	// Count the number of dead and alive cells around a given cell
	if(x == 0 && y == 0){  // Canto esquerdo inferior
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		// if (board[x-1][y] == ALIVE) countAlive++;
		// else if (board[x-1][y] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH
		if (board[x][y+1] == ALIVE) countAlive++;
		else if (board[x][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH
		// if (board[x][y-1] == ALIVE) countAlive++;
		// else if (board[x][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH-EAST
		if (board[x+1][y+1] == ALIVE) countAlive++;
		else if (board[x+1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		// //NORTH-WEST
		// if (board[x-1][y+1] == ALIVE) countAlive++;
		// else if (board[x-1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-EAST
		// if (board[x+1][y-1] == ALIVE) countAlive++;
		// else if (board[x+1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-WEST
		// if (board[x-1][y-1] == ALIVE) countAlive++;
		// else if (board[x-1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
	}
	else if(x == 0 && y < DIM_Y){ // Borda esquerda
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		// if (board[x-1][y] == ALIVE) countAlive++;
		// else if (board[x-1][y] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH
		if (board[x][y+1] == ALIVE) countAlive++;
		else if (board[x][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH
		if (board[x][y-1] == ALIVE) countAlive++;
		else if (board[x][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-EAST
		if (board[x+1][y+1] == ALIVE) countAlive++;
		else if (board[x+1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-WEST
		// if (board[x-1][y+1] == ALIVE) countAlive++;
		// else if (board[x-1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-EAST
		if (board[x+1][y-1] == ALIVE) countAlive++;
		else if (board[x+1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-WEST
		// if (board[x-1][y-1] == ALIVE) countAlive++;
		// else if (board[x-1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
	}
	else if(x == 0 && y == DIM_Y){ // Canto esquerdo superior
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		// if (board[x-1][y] == ALIVE) countAlive++;
		// else if (board[x-1][y] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH
		// if (board[x][y+1] == ALIVE) countAlive++;
		// else if (board[x][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH
		if (board[x][y-1] == ALIVE) countAlive++;
		else if (board[x][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-EAST
		// if (board[x+1][y+1] == ALIVE) countAlive++;
		// else if (board[x+1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		// //NORTH-WEST
		// if (board[x-1][y+1] == ALIVE) countAlive++;
		// else if (board[x-1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-EAST
		if (board[x+1][y-1] == ALIVE) countAlive++;
		else if (board[x+1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-WEST
		// if (board[x-1][y-1] == ALIVE) countAlive++;
		// else if (board[x-1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
	}
	else if(x < DIM_X && y == 0){ // Borda inferior
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		if (board[x-1][y] == ALIVE) countAlive++;
		else if (board[x-1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH
		if (board[x][y+1] == ALIVE) countAlive++;
		else if (board[x][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH
		// if (board[x][y-1] == ALIVE) countAlive++;
		// else if (board[x][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH-EAST
		if (board[x+1][y+1] == ALIVE) countAlive++;
		else if (board[x+1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-WEST
		if (board[x-1][y+1] == ALIVE) countAlive++;
		else if (board[x-1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-EAST
		// if (board[x+1][y-1] == ALIVE) countAlive++;
		// else if (board[x+1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		// //SOUTH-WEST
		// if (board[x-1][y-1] == ALIVE) countAlive++;
		// else if (board[x-1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
	}
	else if(x < DIM_X && y < DIM_Y){ // Miolo
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		if (board[x-1][y] == ALIVE) countAlive++;
		else if (board[x-1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH
		if (board[x][y+1] == ALIVE) countAlive++;
		else if (board[x][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH
		if (board[x][y-1] == ALIVE) countAlive++;
		else if (board[x][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-EAST
		if (board[x+1][y+1] == ALIVE) countAlive++;
		else if (board[x+1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-WEST
		if (board[x-1][y+1] == ALIVE) countAlive++;
		else if (board[x-1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-EAST
		if (board[x+1][y-1] == ALIVE) countAlive++;
		else if (board[x+1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-WEST
		if (board[x-1][y-1] == ALIVE) countAlive++;
		else if (board[x-1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
	}
	else if(x < DIM_X && y == DIM_Y){ // Borda superior
		//EAST
		if (board[x+1][y] == ALIVE) countAlive++;
		else if (board[x+1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//WEST
		if (board[x-1][y] == ALIVE) countAlive++;
		else if (board[x-1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH
		// if (board[x][y+1] == ALIVE) countAlive++;
		// else if (board[x][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH
		if (board[x][y-1] == ALIVE) countAlive++;
		else if (board[x][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-EAST
		// if (board[x+1][y+1] == ALIVE) countAlive++;
		// else if (board[x+1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		// //NORTH-WEST
		// if (board[x-1][y+1] == ALIVE) countAlive++;
		// else if (board[x-1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-EAST
		if (board[x+1][y-1] == ALIVE) countAlive++;
		else if (board[x+1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-WEST
		if (board[x-1][y-1] == ALIVE) countAlive++;
		else if (board[x-1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
	}
	else if(x == DIM_X && y == 0){ // Canto inferior direito
		//EAST
		// if (board[x+1][y] == ALIVE) countAlive++;
		// else if (board[x+1][y] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//WEST
		if (board[x-1][y] == ALIVE) countAlive++;
		else if (board[x-1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH
		if (board[x][y+1] == ALIVE) countAlive++;
		else if (board[x][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH
		// if (board[x][y-1] == ALIVE) countAlive++;
		// else if (board[x][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH-EAST
		// if (board[x+1][y+1] == ALIVE) countAlive++;
		// else if (board[x+1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//NORTH-WEST
		if (board[x-1][y+1] == ALIVE) countAlive++;
		else if (board[x-1][y+1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//SOUTH-EAST
		// if (board[x+1][y-1] == ALIVE) countAlive++;
		// else if (board[x+1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		// //SOUTH-WEST
		// if (board[x-1][y-1] == ALIVE) countAlive++;
		// else if (board[x-1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
	}
	else if(x == DIM_X && y == DIM_Y){ // Canto superior direito
		//EAST
		// if (board[x+1][y] == ALIVE) countAlive++;
		// else if (board[x+1][y] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//WEST
		if (board[x-1][y] == ALIVE) countAlive++;
		else if (board[x-1][y] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH
		// if (board[x][y+1] == ALIVE) countAlive++;
		// else if (board[x][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH
		if (board[x][y-1] == ALIVE) countAlive++;
		else if (board[x][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
		//NORTH-EAST
		// if (board[x+1][y+1] == ALIVE) countAlive++;
		// else if (board[x+1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		// //NORTH-WEST
		// if (board[x-1][y+1] == ALIVE) countAlive++;
		// else if (board[x-1][y+1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-EAST
		// if (board[x+1][y-1] == ALIVE) countAlive++;
		// else if (board[x+1][y-1] == DEAD) countDead++;
		// else while(1){Echo("Erro");}
		//SOUTH-WEST
		if (board[x-1][y-1] == ALIVE) countAlive++;
		else if (board[x-1][y-1] == DEAD) countDead++;
		else while(1){Echo("Erro");}
	}
	else{
		return 404;
	}
	// Qualquer célula viva com menos de dois vizinhos vivos morre de solidão
	if(myBoard[nextX][nextY] == ALIVE && countAlive < 2){
		myBoard[nextX][nextY] = DEAD;
	}
	// Qualquer célula viva com mais de três vizinhos vivos morre de superpopulação
	else if(myBoard[nextX][nextY] == ALIVE && countAlive > 3){
		myBoard[nextX][nextY] = DEAD;
	}
	// Qualquer célula morta com exatamente três vizinhos vivos se torna uma célula viva
	else if(myBoard[nextX][nextY] == DEAD && countAlive == 3){
		myBoard[nextX][nextY] = ALIVE;
	}
	// Qualquer célula viva com dois ou três vizinhos vivos continua no mesmo estado para a próxima geração 
	else if(myBoard[nextX][nextY] == ALIVE && (countAlive == 2 || countAlive == 3)){
		myBoard[nextX][nextY] = ALIVE;
	}
	else{
		myBoard[nextX][nextY] = myBoard[nextX][nextY];
	}
}

int main()
{
	int i, j, n, iterations = 0;

	Echo("Runner2 starting the table:");
	// Starting the table!
	for(i=0;i<DIM_X;i++){
		for(j=0;j<DIM_Y;j++){
			board[i][j] = rand()%2;
			Echo(itoa(board[i][j]));
		}
		Echo("------");
	}

	Echo("Runner2 myTable:");
	for(i=0;i<RUNNER_DIM_X;i++){
		for(j=0;j<RUNNER_DIM_Y;j++){
			myBoard[i][j] = board[i+(myX*RUNNER_DIM_X)][j+(myY*RUNNER_DIM_Y)];
			Echo(itoa(myBoard[i][j]));
		}
		Echo("------");
	}

	while(iterations != N_ITERATIONS){
		iterations++;
		Echo("Runner2 starting a new phase...");
		Echo("Computing...");
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				checkCell(i,j);
			}
		}
		Echo("Merging...");

		Receive(&msg, runner1);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(0*RUNNER_DIM_X)][j+(0*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		//Receive(&msg, runner2);
		msg.length = RUNNER_DIM_X*RUNNER_DIM_Y;
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(myX*RUNNER_DIM_X)][j+(myY*RUNNER_DIM_Y)] = myBoard[i][j]; 
				msg.msg[n] = myBoard[i][j];
				n++;
			}
		}

		Send(&msg, runner1);
		Send(&msg, runner3);
		Send(&msg, runner4);
		Send(&msg, runner5);
		Send(&msg, runner6);
		Send(&msg, runner7);
		Send(&msg, runner8);
		Send(&msg, runner9);

		Receive(&msg, runner3);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(2*RUNNER_DIM_X)][j+(0*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner4);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(0*RUNNER_DIM_X)][j+(1*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner5);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(1*RUNNER_DIM_X)][j+(1*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner6);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(2*RUNNER_DIM_X)][j+(1*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner7);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(0*RUNNER_DIM_X)][j+(2*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner8);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(1*RUNNER_DIM_X)][j+(2*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Receive(&msg, runner9);
		n=0;
		for(i=0;i<RUNNER_DIM_X;i++){
			for(j=0;j<RUNNER_DIM_Y;j++){
				board[i+(2*RUNNER_DIM_X)][j+(2*RUNNER_DIM_Y)] = msg.msg[n];
				n++;
			}
		}

		Echo("Merged");
	}


	Echo("Runner1 ending");

	exit();

}
