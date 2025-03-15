void main(){
  print('--------Class--------');
  // const로 immutable 프로그래밍
  Idol blackPink = const Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  );

  // blackPink.name = '코드팩토리'
  // => err => final로 선언해서 변경 불가 => immutable 프로그래밍

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
  print('--------Named Constructor--------');
  Idol bts = Idol.fromList(
    [
      ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
      'BTS',
    ]
  );
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();

  print('--------Getter--------');
  Idol2 bts2 = Idol2.fromList(
    [
      ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국'],
      'BTS',
    ]
  );
  print(bts2.firstMember);
  
  print('--------Setter--------');
  bts2.firstMember = '아이언맨';
  print(bts2.firstMember);
}

// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수

// constructor (생성자)
// immutable 프로그래밍 - 한번 값을 선언하면 변경할 수 없게 하는게 유행
class Idol {
  // 외부에서 import해도 언더바(_)를 _Idol 하면 변수 불러오기 불가능
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  // named constructor
  Idol.fromList(List values)
    : this.members = values[0],
      this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}

  // getter / setter
  // 데이터를 가져올 때 / 데이터를 설정할 때
class Idol2 {
  final String name;
  final List<String> members;

  const Idol2(this.name, this.members);

  // named constructor
  Idol2.fromList(List values)
    : this.members = values[0],
      this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가 있습니다.');
  }

  // getter
  String get firstMember {
  return this.members[0];
  }

  // setter 잘 안씀: 리스트의 일부 값을 변경하는건 immutable을 무시함
  set firstMember(String name){
    this.members[0] = name;
  }
}