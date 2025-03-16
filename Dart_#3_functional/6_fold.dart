void main() {
    List<int> numbers = [1, 3, 5, 7, 9];

    final sum = numbers.fold<int>(0, (prev, next) {
        print('--------');
        print('prev : $prev');
        print('next : $next');
        print('total : ${prev + next}');

        return prev + next;
    });
    print(sum);


    // 리턴되는 data type을 지정 => <int>
    final sum2 = numbers.fold<int>(0, (prev, next) => prev + next);
    print(sum2);

    List<String> words = [
        '안녕하세요',
        '저는 ',
        '코드팩토리입니다.;'
    ];

    final sentence = words.fold<String>('', (prev, next) => prev + next);

    print(sentence);

    final count = words.fold<int>(0, (prev, next) => prev + next.length);

    print(count);
}