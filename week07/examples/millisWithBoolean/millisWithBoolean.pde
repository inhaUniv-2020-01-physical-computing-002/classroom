int timeCheck;
color fillColor;
boolean isDone = false;

void setup(){
    size(400, 400);
    timeCheck = millis();
}

void draw(){
    background(0);
    
    if( millis() - timeCheck > 5000 && !isDone ) {
        // 마지막으로 체크한 시간에서 1초가 지나면 
        fillColor = color( random(255), random(255), random(255));        
        timeCheck = millis();
        isDone = true;
    }
    
    fill(fillColor);
    ellipse(width/2, height/2, 200, 200);
}
