class Game {
  final String name;
  final String icon;
  final Color color;
  final List<Version> versions;

  const Game({
    required this.name,
    required this.icon,
    required this.color,
    required this.versions,
  });
}

class Version {
  final String name;
  final String date;
  final String mainQuest;
  final String summary;
  final List<Character> characters;

  const Version({
    required this.name,
    required this.date,
    required this.mainQuest,
    required this.summary,
    required this.characters,
  });
}

class Character {
  final String name;
  final String rarity; // 'S' or '5' or '6'
  final String element;
  final String imageUrl;
  final bool isNew;

  const Character({
    required this.name,
    required this.rarity,
    required this.element,
    this.imageUrl = '',
    this.isNew = false,
  });
}
