/*
    간단한 태양-지구-달 애니메이션
    
    도형은 좌표계 위에 그려진다. 
    
    따라서 회전을 주기 위해서는, 
    
    1) 좌표계의 원점을 이동시킨 뒤
    2) rotate()를 적용하여 좌표계를 회전시키고,
    3) 회전하고 있는 좌표계 위에 도형을 그린다.
    
    translate() : 좌표계의 원점을 이동시킨다.
    rotate() : 좌표계의 원점을 기준으로 시계뱡향으로 회전한다. 
*/

int earthAngle;        // 태양을 중심으로 지구의 위치를 지정
int moonAngle;        // 지구를 중심으로 달의 위치

void setup(){
    size(800, 800);
}

void draw(){
    background(0);
    
    earthAngle++;
    moonAngle = moonAngle + 2;
    
    // 태양을 그린다
    translate(width/2, height/2);
    rotate(radians(earthAngle));
    //drawAxis();
    fill(255, 0, 0);
    noStroke();
    ellipse(0, 0, 80, 80);
    
    // 지구를 그린다.
    fill(0, 255, 255);
    ellipse(200, 0, 40, 40);
    
    // 달을 그린다
    
    // 달 회전을 위한 부분
    translate(200, 0);
    rotate(radians(-moonAngle));
    //drawAxis();
    
    
    fill(255, 255, 0);
    noStroke();
    ellipse(50, 0, 10, 10);
}

void drawAxis(){
    // x랑 y축을 그리는 함수
    stroke(255, 0, 0);
    line(0, 0, width, 0);
    stroke(0, 255, 0);
    line(0, 0, 0, height);
}
