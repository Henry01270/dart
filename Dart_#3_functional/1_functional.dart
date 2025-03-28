void main() {
    List<String> blackPink = ['로제', '지수', '리사', '제니'];

    final newBlackPink = blackPink.map((x){
        return '블랙핑크 $x';
    });

    print(blackPink);
    print(newBlackPink.toList());

    final newBlackPink2 = blackPink.map((x) => '블랙핑크 $x');

    print(newBlackPink2.toList());

    print(blackPink == blackPink);
    print(newBlackPink == blackPink);
    print(newBlackPink == newBlackPink2);

    // [1.jpg, 3.jpg, 5.jpgm 7.jpg, 9.jpg]
    String number = '13579';

    final parsed = number.split('').map((x) => '$x.jpg').toList();
    // split(''); 한글자씩 분해해서 리스트로 나열

    print(parsed);
}