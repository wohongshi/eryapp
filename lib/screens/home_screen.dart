import 'package:flutter/material.dart';
import '../data/game_repository.dart';
import '../models/game_data.dart';
import 'game_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Game> _games = GameRepository.getAllGames();
  int _selectedGameIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // 左侧游戏选择栏
          _buildGameSidebar(),
          // 右侧内容区
          Expanded(
            child: GameDetailScreen(game: _games[_selectedGameIndex]),
          ),
        ],
      ),
    );
  }

  Widget _buildGameSidebar() {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF0D0D1A),
        border: Border(
          right: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      child: Column(
        children: [
          // 标题
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'ERY',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '二次元卡池展示',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // 游戏列表
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: _games.length,
              itemBuilder: (context, index) {
                final game = _games[index];
                final isSelected = index == _selectedGameIndex;
                return _buildGameItem(game, index, isSelected);
              },
            ),
          ),
          // 底部信息
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'v1.0.0',
              style: TextStyle(
                fontSize: 11,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameItem(Game game, int index, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Material(
        color: isSelected
            ? game.color.withOpacity(0.2)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => setState(() => _selectedGameIndex = index),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: isSelected
                  ? Border.all(color: game.color.withOpacity(0.5))
                  : null,
            ),
            child: Row(
              children: [
                Text(
                  game.icon,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        game.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: isSelected ? game.color : Colors.white70,
                        ),
                      ),
                      Text(
                        '${game.versions.length}个版本',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Container(
                    width: 4,
                    height: 24,
                    decoration: BoxDecoration(
                      color: game.color,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
