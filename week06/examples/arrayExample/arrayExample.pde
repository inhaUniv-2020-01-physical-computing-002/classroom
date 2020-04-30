// 배열을 사용해서 100개의 점을 한번에 그려보자
// 1. 원의 x, y좌표를 배열로 선언
int x[] = new int[10000];
int y[] = new int[10000];
int c[] = new int[10000]; // 점의 색

void setup(){
    size(400, 400);
    for(int i=0; i<10000; i++){
        // /,  %연산자를 사용할 수 있다!
        x[i] = ( i % 100 ) * 4 + 8 ;  // 0 - 400까지, 40씩 증가, 반복
        y[i] = ( i / 100 ) * 4 + 8;  // 
        c[i] = (i % 16) * 30;  
    }
}

void draw(){
    background(255);
    strokeWeight(3);
    
    for(int i=0; i<10000; i++){
        stroke(c[i]);
        point(x[i], y[i]);
    }
}
