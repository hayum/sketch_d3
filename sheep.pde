PImage photo;
int step=0,branch=0;
void setup(){
  size(800,600);
  background(0);
  photo = loadImage("1.jpg");
  image(photo, 600, 450);
  textSize(25);
  
  textLeading(30);
  text("After waking up from your sweet dream on August 20nd\n      morining, you find yourself become a sheep.",20,260);
  textSize(20);
  text("click to start your adventure.",240,325);
}

void draw(){

  image(photo, 600, 450);
  textSize(25);
  textAlign(CENTER,CENTER);
  textLeading(25);
}

void mousePressed(){
 if(step==0){
   background(0);
   text("Close your eyes and continue sleeping or not?", 400,260);
   text("Press 1 for Yes or 2 for No",400,300);  
   step=1;
  }
}
void keyPressed() {
  println(step);
  //infor(key);
  if (key == '1') {
    if(step==1){
       background(0);
       text("You opened your eyes. You were still a\nsheep,and standing on the farm this time.", 400,260);
       text("Stay here or run?", 400,300);
       text("Press 1 to stay here or 2 to run",400,340); 
       step++;
       branch=1;
       
    }
    else if(step==2 && branch==2){
      background(0);
       text("Which direction?", 400,260);
       text("Press 1 for home or 2 for others",400,300); 
       step++;
       branch=3;
    }
    else if(step==6||step==2 && branch==1){
       background(0);
       text("The food was fodder.\nYou found fodder delicious and lived a happy life as a sheep", 400,260);
       step=1000;
       //infor();
    }
    
    else if(step==3 && branch==2){
       background(0);
       text("A sheep runs by 2 legs? You're caught by a circus. Good luch! See you.", 400,260);
       step=1000;
    }
     else if(step==3 && branch==3){
       background(0);
       text("A cook is on the left road and a wolf is on the right road", 400,260);
       text("Which road do you choose?", 400,290);
       text("Press 1 for left or 2 for right",400,340); 
       step++;
       branch=2;
    
    }
    else if(step==3 && branch==4){
        
       //background(0);
        background(0);
       text("Run by 2 legs or 4 legs?", 400,260);
       text("Press 1 for 2 legs or 2 for 4 legs",400,300);
       step=3;
       branch=2;
      
    }
     else if(step==4 && branch==2){
       background(0);
       text("Fortunately, the cook is your uncle.How can you remind him?", 400,260);
       text("Dance or fight?", 400,290);
       text("Press 1 to dance or 2 to fight",400,340);
       step++;
       branch=1;
      }
      else if(step==5 && branch==1){
       background(0);
       text("Oh! Wonderful dance! Your uncle didn't recognize you.", 400,260);
       text("However, you could meet your family at table", 400,300);
       step=1000;
      }
        else if(step==5 && branch==2){
       background(0);
       text("A sheep fought with a wolf.\nCan you win?\nObviously NO.", 400,260);
       step=1000;
        }
   }
   else if (key == '2'){
       if(step==1) {
        background(0);
        text("It's time to escape! From the door or window?", 400,260);
        text("Press 1 for the door or 2 for the window",400,300); 
        step=2;
        branch=2;
       // key='2';
      }
      else if(step==2 && branch==2){
        background(0);
        text("You're trapped by the window. ", 400,260);
        text("Take off your wool or not?", 400,290);
        text("Press 1 for yes or 2 for no",400,340);
        step++;
        branch=4;
      }
       else if(step==2 && branch==1){
       background(0);
       text("Run by 2 legs or 4 legs?", 400,260);
       text("Press 1 for 2 legs or 2 for 4 legs",400,300);
       step++;
       branch=2;
      }
      else if(step==3 && branch==2){
       background(0);
       text("Take some food with you?", 400,260);
       text("Press 1 for Yes or 2 for No",400,300);
       step=6;
       branch=1;
       
       //key='1';
      }
      else if(step==3 && branch==3){
       background(0);
       text("Wow! You met a BBQ festival.\" Enjoy yourself\"\nFree tips:East or West, Home...", 400,260);
       step++;
       step=1000;
      }
       else if(step==3 && branch==4){
       background(0);
       text("Well done! You were caught by your neighbor.\nThey had a BBQ.", 400,260);
       step=1000;
      }
       else if(step==6 && branch==1){
         println("here");
       background(0);
       text("Which direction?", 400,260);
       text("Press 1 for home or 2 for others",400,300); 
       step=3;
       branch=3;
      }
       else if(step==4 && branch==2){
       background(0);
       //text("A sheep met a wolf. That The wolf ate the sheep is the end of the story", 400,260);
       text("Fight or Smile at wolf?",400,260);
       text("Press 1 to fight or 2 to smile:)",400,300); 
       step++;
       branch=2;
      }
       else if(step==5 && branch==1){
       background(0);
       text("You fought so hard that you waked up.", 400,260);
       text("Welcome back to bootcamp. Wake up. It's just August 5th now.", 400,300);
       step=1000;
      }
       else if(step==5 && branch==2){
       background(0);
       text("The wolf fell in love with you,\nsuch a unique sheep.\nWish you happiness", 400,260);
       step=1000;
       //infor();
      }
      
  }
  else if(key=='3'){
    branch=0;
    background(0);
   text("Close your eyes and continue sleeping or not?", 400,260);
   text("Press 1 for Yes or 2 for No",400,300);  
   step=1; 
  }
   else if(key=='4'){
   exit();
   
  }
  infor(step);
 
}

void infor(int step){
  //println(step); 
  if(step==1000){
   textSize(30);  
   textAlign(CENTER,CENTER);
  text("The End.\nPress 3 to restart.\nPress 4 to exit.",400,500); 
}
  
}