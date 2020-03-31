// 1. 캔버스의 사이즈 지정
size(400, 300);

// 2. 배경색 지정하기
// 2-1. 배경색을 밝기로 지정하기
//background(255); 

// 2-2. 배경색을 RGB 세 컬러의 조합으로 지정하기
//background(211, 229, 23);

// 2-3. 배경색을 HEX코드로 지정하기
background(#D3E517);

// 3. 픽셀 밀도 지정하기 (옵션)
pixelDensity(2);

// 캔버스의 정 중앙에 점찍기
point(200, 150);

// 삼각형 그리기
fill(#19E3D7);
triangle(100, 200, 200, 100, 300, 300);

// 라인 그리기
line(0, 0, 400, 300);

// 직사각형 그리기
noFill();
rect(200, 100, 200, 100);

// 원 그리기
stroke(#E32319);
strokeWeight(5);    // 윤곽선을 5px 두께로 그려!
ellipse(220, 150, 80, 80);

// 곡선 
// curve()  ->
// bezier() ->
// arc()    ->
fill(255);
noStroke();
arc(150, 200, 80, 80, radians(30), radians(300), PIE);
