void main() {
    List<Map<String, String>> people = [
        {
            'name': '로제',
            'group': '블랙핑크',
        },
        {
            'name': '지수',
            'group': '블랙핑크',
        },
        {
            'name': 'RM',
            'group': 'BTS',
        },
                {
            'name': '뷔',
            'group': 'BTS',
        },
    ];

    print(people);

    print('----Class----');
    // 확실히 존재한다고 알려주기 위해 ! 사용
    final parsedPeople = people.map(
        (x) => Person(
            name: x['name']!,
            group: x['group']!,
        ),
    ).toList();

    print(parsedPeople);

    // 활용 예
    print('--------');
    for(Person person in parsedPeople) {
        print(person.name);
        print(person.group);
    }

    print('--------');
    final bts = parsedPeople.where(
        (x) => x.group == 'BTS',
    );

    print(bts);

    print('----활용----');
    final result = people
        .map(
            (x) => Person(
                name: x['name']!,
                group: x['group']!,
            ),
        )
        //.where((x) => x.group == 'BTS')
        .fold<int>(
            0,
            (prev, next) => prev + next.name.length,
        );
        

    print(result);
    
}

    // Map의 경우 자유도가 너무 높기에 
    // 데이터를 신뢰할 수 있게 class로 귀속

class Person {
    final String name;
    final String group;

    Person({
        required this.name,
        required this.group,
    });

    // 반환한 값을 String으로 변경
    @override
    String toString() {
        return 'Person(name:$name, group:$group)';
    }
}
