void main() {
    List<int> even = [
        2,
        4,
        6,
        8,
    ];

    List<int> odd = [
        1,
        3,
        5,
        7,
    ];

    // cascading operator
    // ...
    // 원하는 값을 펼쳐서 표현

    print([...even, ...odd]);
    print(even == [...even]);
    // cascading operator로 펼친 값은 원본과 같은 값이지만 원본과 같지는 않다.
}