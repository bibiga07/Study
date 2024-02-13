void main() {
  /// 예외처리 : 프로그램이 진행 중일 때, 의도하였거나 / 의도하지 않은 상황에 대해서
  /// 프로그램적으로 오류가 발생했을 때, 대처하는 방법.
  /// try - catch 문 : 가장 기본적인 예외처리문 / 많이 쓰이는 예외처리 문이기도 함.
  /// finaly 문
  /// on 문
  /// throw / rethrow 문
  
  try {
    /// 예외가 발생할 것으로 예상되는 코드
    print(10 ~/ 0);
  } catch(error, stack) {
    /// 예외가 발생했을 때 실행 하고자 하는 코드
    print(error);
    print(stack);
  } finally {
    /// 예외가 발생 했던, 하지 않았던, try 문/ catch 문 이후에 실행하고자 하는 코드
    print("abc");
  }

  try {
    print(num!);
  } on UnsupportedError catch (e, s) {
    print("~/ 해당 연산자는 0으로 나눌 수 없음");
  } on TypeError catch (e, s) {
    print("Null 값이 참조 됨");
  } catch (e, s) {
    print("모르는 에러 발생");
  }

  try {
    throw Exception("Unknown Error");
  } on UnsupportedError catch (e, s) {
    print("~/ 해당 연산자는 0으로 나눌 수 없음");
  } on TypeError catch (e, s) {
    print("Null 값이 참조 됨");
  } catch (e, s) {
    rethrow;
  }
}