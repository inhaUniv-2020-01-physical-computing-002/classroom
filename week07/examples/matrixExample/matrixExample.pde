size(400, 400);

background(0);
fill(255, 255, 0);
//rect(100, 100, 80, 80);

pushMatrix();    // 0, 0의 상태를 저장을 해둔다.
translate(100, 100);
rect(0, 0, 80, 80);

pushMatrix();
translate(50, 50);
fill(0, 255, 255);
rect(0, 0, 80, 80);
popMatrix();

// 여기는 좌표계의 상태가 100, 100
// ellipse();
// rect();

popMatrix();     // 이전의 상태로 되돌린다.

// 0, 0
fill(0, 255, 0);
ellipse(0, 0, 50, 50);
