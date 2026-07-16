import 'package:flutter/material.dart';
import '../models/game_data.dart';

class GameDetailScreen extends StatefulWidget {
  final Game game;

  const GameDetailScreen({super.key, required this.game});

  @override
  State<GameDetailScreen> createState() => _GameDetailScreenState();
}

class _GameDetailScreenState extends State<GameDetailScreen> {
  int _selectedVersionIndex = 0;
  final ScrollController _versionScrollController = ScrollController();
  final ScrollController _characterScrollController = ScrollController();

  @override
  void didUpdateWidget(GameDetailScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.game.name != widget.game.name) {
      setState(() {
        _selectedVersionIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final game = widget.game;
    final version = game.versions[_selectedVersionIndex];

    return Column(
      children: [
        // 顶部游戏信息
        _buildGameHeader(game),
        // 版本选择器
        _buildVersionSelector(game),
        // 版本详情
        Expanded(
          child: _buildVersionDetail(version, game.color),
        ),
      ],
    );
  }

  Widget _buildGameHeader(Game game) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: game.color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: game.color.withOpacity(0.3)),
            ),
            child: Text(
              game.icon,
              style: const TextStyle(fontSize: 32),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: game.color,
                ),
              ),
              Text(
                '共 ${game.versions.length} 个版本 · ${_getTotalCharacters(game)} 个角色',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ],
          ),
          const Spacer(),
          // 统计信息
          _buildStatChip('版本数', '${game.versions.length}', game.color),
          const SizedBox(width: 12),
          _buildStatChip('角色数', '${_getTotalCharacters(game)}', game.color),
        ],
      ),
    );
  }

  Widget _buildStatChip(String label, String value, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVersionSelector(Game game) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView.builder(
        controller: _versionScrollController,
        scrollDirection: Axis.horizontal,
        itemCount: game.versions.length,
        itemBuilder: (context, index) {
          final version = game.versions[index];
          final isSelected = index == _selectedVersionIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ChoiceChip(
              label: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    version.name,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  Text(
                    version.date,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              selected: isSelected,
              selectedColor: game.color.withOpacity(0.3),
              backgroundColor: const Color(0xFF1A1A2E),
              side: BorderSide(
                color: isSelected
                    ? game.color.withOpacity(0.6)
                    : Colors.white.withOpacity(0.1),
              ),
              onSelected: (selected) {
                if (selected) {
                  setState(() => _selectedVersionIndex = index);
                }
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildVersionDetail(Version version, Color gameColor) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 主线任务
          _buildMainQuestCard(version, gameColor),
          const SizedBox(height: 16),
          // 角色卡池标题
          Row(
            children: [
              Icon(Icons.people, color: gameColor, size: 20),
              const SizedBox(width: 8),
              Text(
                '角色卡池',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: gameColor,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '${version.characters.length}个角色',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // 角色网格
          Expanded(
            child: _buildCharacterGrid(version.characters, gameColor),
          ),
        ],
      ),
    );
  }

  Widget _buildMainQuestCard(Version version, Color gameColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            gameColor.withOpacity(0.15),
            gameColor.withOpacity(0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: gameColor.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: gameColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.auto_stories,
                  color: gameColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '主线任务',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      version.mainQuest,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: gameColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: gameColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  version.date,
                  style: TextStyle(
                    fontSize: 12,
                    color: gameColor,
                  ),
                ),
              ),
            ],
          ),
          if (version.summary.isNotEmpty) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Colors.white.withOpacity(0.6),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      version.summary,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildCharacterGrid(List<Character> characters, Color gameColor) {
    return GridView.builder(
      controller: _characterScrollController,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return _buildCharacterCard(characters[index], gameColor);
      },
    );
  }

  Widget _buildCharacterCard(Character character, Color gameColor) {
    final rarityColor = character.rarity == '5' || character.rarity == '6' || character.rarity == 'S'
        ? const Color(0xFFFFD700)
        : const Color(0xFFA06CD5);

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: character.isNew
              ? gameColor.withOpacity(0.6)
              : Colors.white.withOpacity(0.1),
          width: character.isNew ? 2 : 1,
        ),
        boxShadow: character.isNew
            ? [
                BoxShadow(
                  color: gameColor.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 角色头像
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: rarityColor.withOpacity(0.5),
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    character.avatarUrl,
                    fit: BoxFit.cover,
                    width: 52,
                    height: 52,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child!;
                      return Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: gameColor.withOpacity(0.2),
                        child: Center(
                          child: Text(
                            character.name.isNotEmpty ? character.name[0] : '?',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: gameColor,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              if (character.isNew)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      'NEW',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          // 角色名
          Text(
            character.name,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          // 稀有度和元素
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: rarityColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: rarityColor.withOpacity(0.3),
                  ),
                ),
                child: Text(
                  '${character.rarity}★',
                  style: TextStyle(
                    fontSize: 10,
                    color: rarityColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Text(
                character.element,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  int _getTotalCharacters(Game game) {
    final allCharacters = <String>{};
    for (final version in game.versions) {
      for (final character in version.characters) {
        allCharacters.add(character.name);
      }
    }
    return allCharacters.length;
  }

  @override
  void dispose() {
    _versionScrollController.dispose();
    _characterScrollController.dispose();
    super.dispose();
  }
}
