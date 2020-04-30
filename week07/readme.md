# 7주차 수업

- date: Apr 28, 2020
- 내용: 그래픽 프로그래밍 3
- detail: 좌표계 매트릭스/회전/시간함수/인터랙션

---

# 좌표계 조작하기

## translate()

좌표계의 원점을 이동하는 명령어
2차원/3차원 좌표계를 사용할 수 있다.
3차원을 사용하려면 `size(x, y, P3D)` 세팅이 필요하다.

한번 translate()으로 좌표계의 원점을 변경하면, 이후 그려지는 모든 좌표계에 영향을 미친다.

### 문법

```java
translate(x, y);
translate(x, y, z);
```

### 예제

```java
size(400, 400);
fill(255, 255, 0);
ellipse(100, 100, 80, 80);

translate(200, 200);
fill(255, 0, 255);
ellipse(100, 100, 80, 80);
```

## pushMatrix() / popMatrix()

좌표계 시스템을 관리.
잠깐 좌표계의 이동을 적용하고, 원상태로 돌릴때 사용한다.

- pushMatrix() : 현재의 좌표계 시스템을 매트릭스 스택에 저장한다
- popMatrix() : 매트릭스 스택에 저장된 좌표계 시스템으로 되돌린다.

반드시 쌍으로 사용해야하며, 쌍이 맞지 않으면 실행은 되지만 경고가 발생한다.

### 예제

```java
size(400, 400);

pushMatrix();
	translate(50, 50);
	fill(255, 255, 0);
	ellipse(0, 0, 200, 200);
popMatrix();

fill(255, 0, 255);
ellipse(0, 0, 100, 100);

```

# 회전

## rotate()

회전을 적용한다.

중요한것은, 도형을 움직이는것이 아니라, 도형을 그릴때 사용할 **좌표계를 *원점을 기준*으로 *시계방향으로* 회전한다**는것이다. 
회전의 각도는 ***라디안의 단위***이다.

회전은 2D의 경우 x축을 기준으로 시계방향으로 회전한다.

### 문법

```java
// 2D에서 사용한다.
rotate(angle_in_rad);   // radians 

// 3D에서 사용한다. 
rotateX(angle);  // X축을 기준으로 회전
rotateY(angle);  // Y축을 기준으로 회전
rotateZ(angle);  // Z축을 기준으로 회전
```

## rotate(), translate()

특정한 좌표를 중심으로 회전하기 위해서는, `rotate()` 전에 중심좌표로 `translate()`을 적용해야한다. 
앞의 `translate()`과 마찬가지로, `rotate()` 역시 이후 그려지는 모든 좌표계에 영향을 미친다.

**예제**

```java
// 200, 200을 중심으로 회전하는 사각형 애니메이션 구현하기
float deg;
void setup(){
	size(400, 400);
	deg = 0;
}

void draw(){
	background(0);
	deg++;
	
	pushMatrix();
	translate(width/2, height/2);
	rotate(radians(deg));
	rectMode(CENTER);
	fill(255, 255, 0);
	rect(0, 0, 100, 100);
	popMatrix();
}
```

### 실습

> 아주 간단한 태양계를 구현해보자

# 시간(타이머)

## frameCount

`draw()` 함수가 호출될때마다 증가하는 프레임 번호. `frameRate()` 함수로 초당 `draw()` 함수 호출횟수를 지정할 수 있다. 정수.

## 타이머 : millis()

보다 정확한 시간계산을 위해 사용하는 함수로, 프로그램이 시작한 이래 경과한 시간을 `밀리세컨드` (1/1000초)단위로 리턴해주는 함수이다.

### 타이머 사용하기

`millis()` 함수를 호출한 순간을 변수에 담고, 현재 경과한 시간(`millis()`)와 비교하면, 특정 순간부터 경과한 시간을 계산할 수 있다. 이를 사용하여 특정 시간을 주기로 반복되는 애니메이션을 구현할 수 있다. 

또한 `boolean` 변수와 함께 사용할경우 한번만 동작하는 로직도 구현이 가능하다.

### 예제 : 반복 주기를 이용한 애니메이션

```java
int lastChecked;    // 시간을 저장할 정수 변수

void setup(){
	size(400, 400);
	lastChecked = millis();   // 프로그램이 시작할때 시간을 기록한다.
}

void draw(){
	background(0);

	if(millis() - lastChecked > 5000){  // 마지막으로 체크한 순간부터 5초가 지나면
		fill(random(255), random(255), random(255);  // 랜덤한 색으로 칠하게 한다.
		// 현재 시간을 기록한다.
		lastChecked = millis();
	}

	ellipse(width/2, height/2, 800, 800);
}

```

### 예제 : 단 한번만 동작하는 로직 구현하기

```java
boolean isActivated = false;

void setup(){
	size(400, 400);
	lastChecked = millis();
}

void draw(){
	background(0);

	if(millis() - lastChecked > 5000 && !isActivated){
		fill(random(255), random(255), random(255);  // 랜덤한 색으로 칠하게 한다.
		// 현재 시간을 기록한다.
		lastChecked = millis();
		isActivated = true;
	}

	ellipse(width/2, height/2, 800, 800);
}
```

# 키보드/마우스 인터랙션

## 이벤트 드리븐 함수

프로그램이 실행되면, `draw()`가 수행됨과 동시에, 별도로 현재 마우스와 키보드의 상태를 모니터링하며, 특정한 이벤트가 발생되면 실행하는 함수이다.

`setup()` / `draw()` 외에 이벤트 함수를 작성한다.

```java
void setup(){
}

void draw(){

}

void keyPressed(){
	// 키보드가 눌리면 실행되는 이벤트 함수

}

void mousePressed(){
	// 마우스가 눌리면 실행되는 이벤트 함수
}
```

### 키보드 관련 함수

- `keyPressed()`
- `keyReleased()`
- `keyTyped()`

### 마우스 관련 함수

- `mousePressed()`
- `mouseReleased()`
- `mouseClicked()`
- `mouseDragged()`
- `mouseMoved()`
- `mouseWheel()`

### 키 구별하기

- `key`  : 마지막으로 눌린 키보드의 ascii 코드값이 저장된 변수

```java
...
void keyPressed(){
	if(key == ' '){
		// 키가 눌렸는데, 그 키가 스페이스바일 경우
		println("스페이스");
	}
}
```

### 특수키 구별하기

```java
...
void keyPressed(){
	if(key == CODED){
		if(key == UP){
			println("UP key");
		} else if (key == DOWN){
			preintln("DOWN key");
		}
	}
}
```

### 마우스 버튼 구별하기

- `mouseButton` : `LEFT` , `RIGHT`

마우스 휠 방향 체크

```java
void mouseWheel(MouseEvent event) {
    //println("wheel");

    // 마우스 휠의 방향을 체크하는법 
    float e = event.getCount();
    //println(e);

    if (e < 0) { 
        println("wheel up");
    } else if (e > 0){
        println("wheel down");
    }
}
```