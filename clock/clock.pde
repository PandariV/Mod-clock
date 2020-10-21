int passed;

void setup() {
  fullScreen();
  background(0);
  
  passed = 0;
}

void draw() {
  background(0);
  passed = millis() / 1000;
  int secs = passed % 20;
  float co = (((float)secs/20) * 155);
  
  textSize(32);
  fill(150);
  text("Seconds Passed: " + passed, (width - textWidth("Seconds Passed: " + passed))/2, 10 + textAscent());
  text("Seconds Passed % 20: " + secs, (width - textWidth("Seconds Passed % 20: " + secs))/2, (15 + textAscent())*2);
  
  textSize(45);
  text("20\n |", (width - textWidth("20"))/2, width/9 - textAscent()*2 - 10);
  text(" |\n10", (width - textWidth("10"))/2, height - (width/9) + textAscent() + 10);
  text("- 5", 2*width/3 +10 + textWidth("5"), height/2 - textAscent()/2);
  text("15 -", width/3 - 10 - textWidth("1445"), height/2 - textAscent()/2);
  
  strokeWeight(8);
  stroke(150);
  noFill();
  arc(width/2, height/2, width/3, width/3, -PI/2, 1.5*PI);
  
  stroke(255, 0, 0);
  fill(co + 100, 0, 0);
  float angly = map(secs, 0, 20, -PI/2, 1.5*PI);
  arc(width/2, height/2, width/3, width/3, -PI/2, angly, PIE);
}
