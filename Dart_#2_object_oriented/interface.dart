void main() {
  print('----Interface----');
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  bts.sayName();
  redVelvet.sayName();

  print('----Type Comparison----');
  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}

// interface
// abstract하면 인스턴스화 불가능
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName();
  // void sayName() {}
}

// interface implements를 사용 (extends x)
// interface는 상위 클래스의 방식을 강제한다.
// 따라서 interface 상위 클래스는 보통 설계 방식 지정 목적이라 인스턴스화x
class BoyGroup implements IdolInterface{
  String name;

  BoyGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface{
  String name;

  GirlGroup(this.name);

  void sayName(){
    print('제 이름은 $name입니다.');
  }
}