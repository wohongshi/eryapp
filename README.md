# ERY - 二次元游戏卡池展示

横屏展示多个二次元游戏的版本角色卡池信息和主线任务。

## 支持的游戏

| 游戏 | 图标 | 说明 |
|------|------|------|
| 原神 | ⚡ | 米哈游开放世界RPG |
| 崩坏：星穹铁道 | ⭐ | 米哈游回合制RPG |
| 绝区零 | 🎯 | 米哈游动作游戏 |
| 鸣潮 | 🌊 | 库洛开放世界动作游戏 |
| 异环 | 🔮 | 完美世界二次元射击RPG |
| 明日方舟：终末地 | 🛡️ | 鹰角网络3D即时策略RPG |

## 功能特性

- 📱 横屏全屏显示
- 🎮 左侧游戏选择栏
- 📅 版本时间线选择
- 📖 主线任务名称展示
- 👥 角色卡池展示
- 🆕 新角色标记
- ⭐ 稀有度显示
- 🎨 深色主题

## 技术栈

- Flutter 3.x
- Material Design 3
- 横屏锁定

## 构建

```bash
# 获取依赖
flutter pub get

# 构建APK
flutter build apk --release
```

## 项目结构

```
lib/
├── main.dart              # 入口
├── data/
│   └── game_repository.dart  # 游戏数据
├── models/
│   └── game_data.dart     # 数据模型
└── screens/
    ├── home_screen.dart   # 主页
    └── game_detail_screen.dart  # 游戏详情
```

## 数据说明

数据来源于网络公开信息，仅供展示参考。

## License

MIT
