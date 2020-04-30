int rotateAngle;

void setup() {
    size(400, 400);
    rotateAngle = 0;
}

void draw() {
    background(0);    // 검은 배경
    rotateAngle--;

    pushMatrix();
    translate(width/2, height/2);    // 좌표계의 원점을 화면 중앙으로!
    rotate(radians(rotateAngle));

    //x축과 y축을 그려보자
    pushStyle();
    stroke(255, 0, 0);
    line(0, 0, 200, 0);
    stroke(0, 255, 0);
    line(0, 0, 0, 200);
    popStyle();

    // 사각형을 그려보자
    rectMode(CENTER);
    fill(255);
    rect(0, 0, 80, 80);
    popMatrix();

    fill(255, 255, 0);
    rect(0, 0, 50, 50);
}
