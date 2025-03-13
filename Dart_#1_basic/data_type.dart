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

  print("---------null----------");

  // nullable - null이 될 수 있다.
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.
  String name4 = '다니엘';
  // name4 = null; => err
  // 일반적인 String은 null불가
  
  String? name5 = '강현욱';
  // String도 들어가고 null도 들어갈 수 있다는 뜻이다.
  name5 = null;

  print(name5);

  // nullable 타입에 !를 붙이면 null이 아니다 라는 표현이 가능하다.
  //print(name5!);

  final String name6 = '코드팩토리';
  // = final name6 = '코드팩토리';
  print(name6);

  // name6 = 'asdf'; => err
  // fianl로 선언한 값은 변경 불가능

  const String name7 = '아이브';
  // const name7 = '아이브';
  // const도 불가능

  print("--------DateTime--------");

  DateTime now = DateTime.now();
  // final (o) const (x)
  print(now);
  //DateTime값에 final은 되지만 const는 불가하다.
  // const는 빌드타임에 값을 정확히 알고 있어야한다.

  print("--------Operator--------");

  double? number3 = 4.0;
  // double? => double or null 둘다 가능
  print(number3);

  number3 = null;
  print(number3);

  number3 ??= 3.0;
  // number3 ??= 3.0; => number3가 null일떄 반환
  print(number3);

  print("--------Boolean--------");
  
  int number4 = 1;
  print(number3 is int);
  print(number3 is int);
  print(number3 is! int);

  print("--------List--------");
  // List
  List<String> blackPink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1, 2, 3, 4, 5];

  print(blackPink);
  print(numbers);

  // index
  print(blackPink[0]);

  print(blackPink.length);

  blackPink.add('코드팩토리');
  print(blackPink);

  blackPink.remove(blackPink[blackPink.length - 1]);
  print(blackPink);

  print(blackPink.indexOf('로제'));
  // 로제의 index 값을 구한다.

  print("--------Map--------");
  //Map
  // Key / Value
  Map<String, String> dictionary = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };

  print(dictionary);

  Map<String, bool> isHarryPotter = {
    'Harry Potter' : true,
    'Ron Weasley' : true,
    'Ironman' : false,
  };

  print(isHarryPotter);

  isHarryPotter.addAll({
    'Spiderman' : false,
  });
  
  print(isHarryPotter);

  print(isHarryPotter['Ironman']);
  
  isHarryPotter['Hulk'] = false;
  // key : value 추가
  isHarryPotter['Spiderman'] = true;
  // value값 변경
  print(isHarryPotter);

  isHarryPotter.remove('Harry Potter');
  print('Harry Potter');

  print(isHarryPotter.keys);
  print(isHarryPotter.values);

  print("--------Set--------");

  final Set<String> names = {
    'Code Factory',
    'Flutter',
    'Black Pink;'
  };
  // 자동으로 중복값을 찾아서 걸러준다.

  print(names);

  names.add('Jenny');
  print(names);
  // names.remove();
  print(names.contains('Flutter'));
}