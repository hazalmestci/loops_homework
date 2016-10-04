void setup (){
  size (700, 700);
  noStroke();
  
}

void draw (){
  //background (255);
 for (int x=0; x<= width; x+=50) {
   for (int y=0; y<= height; y+=50)
    fill(map(x, 0, width, 0, 255), (map(y, 0, height, 0, 255)));
    float d= dist (mouseX, mouseY, x, 350);
    float s= map (d, 0, width/2, 1, 150);
    fill(#F52F2F);
    ellipse (x, 350, s, s);
    fill(#9D2626);
    ellipse (x, 150, s, s);
    fill(0);
    ellipse (x, 550, s, s);
  }
  
    for (int i= 0; i <=20; i++) {
    for (int j= 0; j <= 20; j++) {
      stroke(map(i, 0, 20, 0, 255), map(j, 0, 20, 0, 0), 0);
    line (mouseX, mouseY, map(i, 0, 20, 0, width), map (j, 0, 20, 0, height));
    
}}

}