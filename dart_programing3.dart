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

  /// switch 문
  /// Flutter 3.10 / Dart 3.0 버전 이상부터 변경 된 부분이 조금 있는 문법 중 하나.
  /// 
  /// switch (비교 대상) {
  ///   case (조건 식) :
  ///   case (조건 식2) :
  ///   case (조건 식3) :
  ///   default :
  /// }
  
  int num = 5;

  switch (num) {
    case 1:
      print("Switch $num");
    case 2:
      print("Switch $num");
    case 3:
      print("Switch $num");
    case 4:
      print("Switch $num");
    case 5:
      print("Switch $num");
      print("Answer");
    /// ONly Upper Dart 3.0
    case > 100:
      print("number가 100 초과이다.")
    default:
      print("Not 1 ~ 5");
  }
}