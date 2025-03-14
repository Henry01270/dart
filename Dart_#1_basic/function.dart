// void가 아닌 자료형에 맞춰 선언하면 return값으로 반환받을 수 있다.
void main() {
  addNumbers(10, 20);

  namedParameter(y2: 30, x2: 10);

  int result1 = addNumbers(10, 20);
  int result2 = addNumbers(20, 50, 60);

  print("--------Return--------");
  print("result : $result1");
  print("result : $result2");

  print("sum : ${result1 + result2}");

  print("--------Typedef Operation--------");
  Operation operation = add;
  int result = operation(10, 20, 30);
  print(result);

  operation = subtract;
  result = operation(10, 20, 30);
  print(result);

  result = calculate(30, 40, 50, add);

  print(result);
}

// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터
int addNumbers(int x, int y, [int z = 0]) {

  print("--------Position Parameter--------");
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}

// named parameter - 이름이 있는 파라미터 (순서가 중요하지 않다.)
namedParameter({
  required int x2,
  required int y2,
  int z2 = 30,
}) {

  print("--------Named Parameter--------");
  int sum = x2 + y2 + z2;

  print('x : $x2');
  print('y : $y2');
  print('z : $z2');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

/**
int addNumbers(int x, {
  required int y,
  int z = 30,  
}) => x + y + z;
arrow로 return 입력 없이 바로 반환
 */

// typedef는 함수랑 유사하지만 함수에 바디{}가 없다.
typedef Operation = int Function(int x, int y, int z);

// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;

// 계산
int calculate(int x, int y, int z, Operation operation){
  return operation(x, y, z);
}