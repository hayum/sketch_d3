int value,step=0;
void setup(){
  size(800,600);
  background(0);
}

void draw(){
  //textFont
  if(step==0){
  text("Yes or No?", 20,20);
  text("Please press 1 for Yes or 2 for N",20,40);  
  step=1;
  }
}

void keyPressed() {
  if ((key == '1')&& (step==1)) {
     text("Congratulations! You die!", 20,60);
     step=2;
  } else if ((key == '2')&&(step==1)) {
     text("Ok, you missed $10000!", 20,60);
     step=2;
  }
}