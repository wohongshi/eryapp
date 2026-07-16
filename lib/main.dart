import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // 强制横屏
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  // 全屏显示
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  
  runApp(const EryApp());
}

class EryApp extends StatelessWidget {
  const EryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ERY - 二次元游戏卡池展示',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A0A0F),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6C5CE7),
          brightness: Brightness.dark,
          surface: const Color(0xFF1A1A2E),
        ),
        cardTheme: CardTheme(
          color: const Color(0xFF16213E),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
