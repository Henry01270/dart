void main() {
    List<int> numbers = [
        1,
        3,
        5,
        7,
        9,
    ];
    
    final result = numbers.reduce((prev, next) {
        print('--------');
        print('previous : $prev');
        print('next: $next');
        print('total : ${prev + next}');

        return prev + next;
    });
    
    print(result);

    final result2 = numbers.reduce((prev, next) => prev + next);
    print(result2);

    List<String> words = [
        '안녕하세요.',
        '저는 ',
        '코드팩토리입니다. ',
    ];

    final sentence = words.reduce((prev, next) => prev + next);

    print(sentence);

    // reduce는 실행전 List값과 반환값의 data type이 같아야한다.
    // words.reduce((prev, next) => perv.length + next.length);
    // => err
}