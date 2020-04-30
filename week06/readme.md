# 6주차 수업

- date: Apr 21, 2020
- 내용: 그래픽 프로그래밍 2
- detail: 배열 / 이미지 다루기 / 타이포그라피 / 랜덤


# 배열
- array
- 변수를 하나의 이름으로 묶어서 관리하는법

## 변수 vs 배열

### 선언

```java
// 변수선언
int v;

// 배열의 선언. [ ] 사이에 배열의 길이를 지정해준다
int va[3];
```

### 배열의 값 접근

```java
// 변수의 값 입력 및 사용
v = 15;
println(v);

// 배열의 값을 입력하거나 사용할때에는, 배열의 인덱스번호를 사용한다.
// 배열의 인덱스는 0부터 시작한다.
va[0] = 10;
va[1] = 20;
va[2] = 30;

println(va[0]);
println(va[1]);
println(va[2]);
```

### for 반복문을 사용하여 배열값을 한번에 초기화 및 사용하기

배열의 인덱스값은 0부터 시작하며, 1씩 증가한다.
따라서 for문을 사용하면 손쉽게 긴 배열의 값을 업데이트하거나 접근할 수 있다.

```java
// 10의 길이를 갖는 정수배열을 선언한다.
int va[10];

// for문을 사용하여 10개의 값을 배열에 넣기
for(int i=0; i<3; i++){
	// for반복문 내에서 i는 변수로 사용이 가능하며, 따라서 배열의 index로도 사용할 수 있다!
	va[i] = i*10;
}

for(int i=0; i<10; i++){
	println(va[i]);
}
```

# 이미지

불러올 이미지는 스케치폴더 내에 `data` 폴더 안에 위치시킨다.

- PImage

```java
PImage img;
img = loadImage("file.png");
imageMode(CENTER);
imageMode(CORNER);
image(x, y);
image(x, y, w, h);
```

# 타이포그라피

## text()

```java
// 기본 서체로 화면에 출력한다.
fill(255);   // 텍스트는 fill()로 색을 지정한다.
text("hello", x, y);
```

## PFont, createFont()

```java
PFont font;

//시스템에 설치된 폰트이름 출력하여 확인하기
String[] fontList = PFont.list();  // 폰트리스트를 배열레 넣은 뒤

// for문을 이용하여 출력한다.
// fontList.length : 배열의 길이
for(int i=0; i<fontList.length; i++){
	print(i);
	print(" : ");
	println(fontList[i];
}
font = createFont("폰트명", 32);

textFont(font);   // 생성한 폰트로 텍스트를 출력하도록 설정
text("hello hello", x, y);   // x, y 위치에 폰트 그리기
```

# 랜덤

최대값 혹은 최소, 최대의 범위값을 이용하여 난수를 생성한다.
`float` 를 리턴한다.

- `random(float min)`
- `random(float min, float max)`

## 10개의 랜덤한 값을 생성하여 배열에 넣고 사용하기

```java
// 10개의 랜덤한 값을 사용하자

void setup(){
	size(400, 400);
}

void draw(){
}
```
