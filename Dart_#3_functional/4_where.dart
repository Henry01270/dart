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
    // List에서 group값이 블랙핑크인 경우에만 리턴
    final blackPink = people.where((x) => x['group'] == '블랙핑크').toList();
    final bts = people.where((x) => x['group'] == 'BTS').toList();
    print('----Where----');
    print(blackPink);
    print(bts);
}