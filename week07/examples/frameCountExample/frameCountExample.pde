void setup(){
    size(400, 400);
    frameRate(15);    // draw함수를 1초에 몇번 호출할건지
}

void draw(){
    background(0);
    
    fill(255);
    text(millis(), 20, 20);
    
    translate(width/2, height/2);
    rotate(radians(frameCount));
    rectMode(CENTER);
    rect(0, 0, 100, 100);
}
