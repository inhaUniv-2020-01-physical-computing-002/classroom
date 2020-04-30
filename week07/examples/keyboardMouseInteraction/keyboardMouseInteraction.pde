/*
    키보드, 마우스 인터랙션 실습

    스페이스바를 누르면, 도형의 색이 랜덤하게 바뀐다.
    마우스 왼쪽버튼을 누르면, 도형의 위치가 랜덤하게 바뀐다.
    마우스 오른쪽 버튼을 누르면, 도형의 크기가 랜덤하게 바뀐다.
    휠 스크롤을 하면, 도형의 크기를 조절한다.

*/
color fillColor;    // 색을 저장할 변수
float x, y;     // 위치(x, y) 를 저장할 변수 
float rSize;    // 크기를 저장할 변수
int timeCheck;    // 시간을 기록할 타이머 변수

void setup(){
    size(600, 600);
    
    // 변수들 초기화
    fillColor = color(255);    // 기본 색을 흰색으로 설정
    x = width/2;
    y = height/2;
    rSize = 100;
}

void draw(){
    background(0);
    
    fill(fillColor);
    ellipse(x, y, rSize, rSize);
    
    // 1초동안만 동작하게 타이머변수를 사용한다.
    if( millis() - timeCheck < 1000 ){
        x = random(50, width - 50);
        y = random(50, height - 50);
    }
}

void mousePressed(){    // 마우스 키가 눌렸을때 
    // 버튼에 따라서 조건을 설정
    if(mouseButton == LEFT){    // 왼쪽버튼이면
        x = random(50, width - 50);
        y = random(50, height - 50);
    } else if ( mouseButton == RIGHT){ // 오른쪽 버튼이면 
        rSize = random(30, 50);
    }
}


// 마우스 스크롤을 사용하여 원의 크기를 조절한다.
void mouseWheel(MouseEvent event){
    float e = event.getCount();
    
    if (e < 0){    // 휠 스크롤이 위 방향이면
        rSize++;
    } else if (e > 0){ // 휠 스크롤이 아래 방향이면 
        rSize--;
    }
}

void keyPressed(){
    if ( key == ' ' ){    // 눌린 키가 스페이스 키이면.
        // 색을 랜덤하게 만들어서 변수에 저장
        fillColor = color( random(255), random(255), random(255) );
    } else if (key == 'a'){        // a키를 누르면, 현재 시간을 저장한다
        timeCheck = millis();
        println(timeCheck);
    }
}
