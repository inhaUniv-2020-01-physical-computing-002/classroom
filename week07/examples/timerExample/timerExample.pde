int timeCheck;    // 시간을 저장하는 변수
color fillColor;  // 컬러를 저장할 변수
boolean isDone = false;

void setup(){
    size(400, 400);
    frameRate(120);
    
    fillColor = color(255);
    timeCheck = millis();
}


void draw(){
    background(0);
    
    if( millis() - timeCheck > 5000 && !isDone ){
        // 컬러를 랜덤하게 만든다.
        fillColor = color(random(255), random(255), random(255));
        println("color changed!");
        isDone = true;
        timeCheck = millis();
    }
      
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(frameCount));
    
    rectMode(CENTER);
    fill(fillColor);
    rect(0, 0, 200, 200);
    popMatrix();
    
    //fill(255);
    //text(millis(), 20, 20);
}
