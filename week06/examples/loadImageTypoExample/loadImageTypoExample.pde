PFont font;    // 폰트 객체  (폰트를 담을 변수)

PImage img;

void setup() {
    size(800, 800);
    img = loadImage("duck.jpg"); // 스케치폴더에 data폴더 안에 넣어야 한다.
    
    String fontList[];
    // 폰트리스트를 콘솔에 출력
    fontList = PFont.list(); // 시스템에 설치된 폰트 이름(String)을 배열로 리턴
    printArray(fontList);
    
    font = createFont("Optima-Bold", 64);
}

void draw() {
    background(255);
    // translate();
    // scale(width/(mouseX+0.1));
    // rotate();
    imageMode(CENTER);
    //image(img, 0, 0);    // 
    image(img, width/2, height/2, mouseX, mouseY); //
    rectMode(CENTER);
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(width/2, height/2, mouseX, mouseY);
    
    fill(0); // text출력시 색은 fill();
    textAlign(CENTER, CENTER);
    textSize(mouseX+3);
    textFont(font);
    text("duck", width/2, height/2);
    
    
}
