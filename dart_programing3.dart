void main() {
  /// 분기문과 반복문
  /// 분기문 : 프로그램이 특정한 상황에 일을 할 지 / 하지않고 넘길지
  /// if / else || switch
  /// 
  /// if 문 / if - else 문
  /// if (조건식) {
  ///   조건식이 참일 경우 실행 할 코드
  /// } else if (조건식2) {
  ///   맨 처음 조건식이 거짓이지만, 조건식 2가 참일 경우 실행할 코드
  /// } else {
  ///   조건식이 거짓일 경우 실행 할 코드
  /// }
  
  int standard = 3;
  if (standard < 0) {
    print("X");
  } else if (standard == 3) {
    print("O");
  } else {
    print("다 거짓");
  }
}