void main() {
  // variable
  var name = '코드팩토리';
  print(name);

  int number1 = 1;
  print(number1);

  double number2 = 2.5;
  print(number2);

  bool isTrue = true;
  print(isTrue);

  String name2 = "뉴진스";
  print('${name.runtimeType}는 $name2이다.');

  // dynamic은 var처럼 자동으로 타입반환
  /*
    var타입의 경우 한번 선언하면 타입이 고정되어 타입변환이 불가능하지만
    dynamic은 유동적으로 변경이 가능하다.
    ex)
      var a = 1;

      a = '1'; (x)

      dynamic a = 1;

      a = '1'; (o)
   */
  dynamic name3 = '다니엘';
  print(name3);
}