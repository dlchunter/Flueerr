ArrayList<Flue> flueListe = new ArrayList<Flue>();
ArrayList<storFlue> flueStorListe = new ArrayList<storFlue>();

void setup(){
  size(500,500);
}

void draw(){
  for(int i=0; i<flueListe.size(); i++){
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
  }
    for(int i=0; i<flueStorListe.size(); i++){ //Vi tegner storFluen med dens egenskaber
    storFlue f = flueStorListe.get(i);
    f.tegnstorFlue();
    f.flyt();
  }
}
   
void keyPressed(){
     if (key == 'e' || key == 'E') {
       flueStorListe.add(new storFlue());
   }
   if (key == 'w' || key == 'W') {
  flueListe.add(new Flue());
   }
}

void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY));
}


/////////////////////////////////////////////////////////
class storFlue { // Vi laver en anden class der hedder storFlue
    
  float positionX2,positionY2; //Vi introducerer variablerne
  float distanceFlyttet2;
  float vinkel2 = 0; 
  float scale2;
  
  storFlue(){ //Variablerne defineres
    positionX2  = random(0,height); 
    positionY2  = random(0,width);
    scale2      = random(0,20);
    vinkel2     = random(0,2*PI);
  }
  
  storFlue(float a, float b){ //Vi definerer hvor den skal tegnes
    positionX2 = a;
    positionY2 = b;
    vinkel2    = random(0,2*PI);
  }
  
  void flyt(){ //Vi definerer dens hastighed den flytter med
    distanceFlyttet2 = distanceFlyttet2 + 0.5;
  }
  void tegnstorFlue(){ //Vi definerer hvordan den skal tegnes
    pushMatrix();
      translate(positionX2,positionY2);
      rotate(vinkel2);
      scale(scale2);
      translate(distanceFlyttet2,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
   

}

} 


class Flue{
  
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  float scale;
  
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    scale      = random(0,20);
    vinkel     = random(0,2*PI);
  }
  
  Flue(float a, float b){
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }
  
  void flyt(){
    distanceFlyttet = distanceFlyttet + 0.5;
    
  }

  void tegnFlue(){
    pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
