import 'package:flutter/material.dart';

class Game {
  final String name;
  final String icon;
  final Color color;
  final List<Version> versions;

  Game({
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

  Version({
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

  /// 获取角色头像URL（使用DiceBear API生成）
  String get avatarUrl {
    if (imageUrl.isNotEmpty) return imageUrl;
    // 使用DiceBear API基于角色名生成独特头像
    return 'https://api.dicebear.com/7.x/notionists/svg?seed=$name&backgroundColor=b6e3f4,c0aede,d1d4f9,ffd5dc,ffdfbf';
  }
}
