int size = 9;
boolean[][] board= new boolean[size][size];

void setup() 
{
  size (size*50,size*50);
  clearBoard();
}

void draw()
{
  
  displayBoard();
}

void mouseClicked()
{
  if (board[mouseX/50][mouseY/50] == false)
  {
    board[mouseX/50][mouseY/50] = true;
    fill(255, 255, 255);
  }
  else
  {
    board[mouseX/50][mouseY/50] = false;
    fill (#74CBF5);
  }
}

void displayBoard()
{
  for (int a = 0; a < size; a++)
  {
   for (int b = 0; b < size; b++)
   {
     if(board[a][b] == true)
     {
       
       fill(#6EC0F2);
     }
     else
     {
       fill(255);
     }
     rect(a*50,b*50,50,50);
   }
  }
}

void clearBoard(){
  
  for (int a = 0; a < size; a++)
  {
   for (int b = 0; b < size; b++)
   {
      board [a][b] = false;
   }
  }
}

