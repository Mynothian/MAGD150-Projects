PFont f;
PFont g;
int[] phraseY = {128, 384, 640};
int[] phrase2Y = {256, 512, 768};
String[] phrases;
String[] phrases2;

/*
String[] phrases = {"EXISTENCE IS MEANINGLESS", "DEATH IS INEVITABLE", "MISERY IS CONSTANT"};
String[] phrases2 = {"CONSUME", "OBEY", "CONFORM"};
*/
/*TODO
  store all text strings within a separate text file


*/

void setup(){
  size(512, 768);
  colorMode(RGB);
  //loads the strings from the .txt files into the string arrays
  phrases = loadStrings("phrases1.txt");
  phrases2 = loadStrings("phrases2.txt");
  //load the fonts from the computer
  f = createFont("Helvetica", 32);
  g = createFont("Arial", 32);
}

void draw(){
  background(255, 255, 255);
  textFont(f, 32);
  fill(0,0,0);
  textAlign(CENTER);
  
  //prints the first set of phrases at their specific x/y locations
  for(int i = 0; i < phraseY.length; i++){
    text(phrases[i], 256, phraseY[i]);
  }
  //change font and text color for second set of phrases
  textFont(g, 32);
  fill(245, 245, 245);
  textAlign(CENTER);
  
  //print the second set of phrases at their x/y locations
  for(int i = 0; i < phrase2Y.length; i++){
    text(phrases2[i], 256, phrase2Y[i]);
  }
  
  //controls the vertical movement of the first set of phrases
  for(int i = 0; i < phraseY.length; i++){
    if(phraseY[i] == 800){
      phraseY[i] = 0;
    }
    else{
      phraseY[i] = phraseY[i] + 1;
    }
  }
  //controls the vertical movement of the second set of phrases
  //is all this code redundant? sort of, but it works, so why change it?
  for(int i = 0; i < phrase2Y.length; i++){
    if(phrase2Y[i] == 800){
      phrase2Y[i] = 0;
    }
    else{
      phrase2Y[i] = phrase2Y[i] + 1;
    }
  }
  
}
