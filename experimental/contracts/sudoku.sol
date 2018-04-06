pragma solidity ^0.4.4;

contract Sudoku {

  address player1;
  address player2;

  bool game_on_palyer1;
  bool game_on_player2;

  uint game_board[3][3];
  uint total_bet;

  function Sudoku() {
    initialize();
  }

  function start_game() payable {
    if(!game_on_player1){
      player1 = msg.sender;
      total_bet+=msg.value;
      game_on_player1 = true;
    }
    else if(!gmae_on_player2){
      player2 = msg.sender;
      total_bet+=msg.value;
      game_on_player2 = true;
    }
    else{
      //Game is one, please try after some time
    }
  }

  function initialize() internal {
    total_bet = 0;
    for(uint i=0; i < 3;i++){
      for(uint j=0; j < 3; j++){
        game_board[i][j] = 3;
      }
    }
    game_on_player1 = false;
    game_on_player2 = false;
  }

}
