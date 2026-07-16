import 'package:flutter/material.dart';
import '../models/game_data.dart';

class GameRepository {
  static List<Game> getAllGames() {
    return [
      _genshinImpact,
      _honkaiStarRail,
      _zenlessZoneZero,
      _wutheringWaves,
      _arteryGear,
      _arknightsEndfield,
    ];
  }

  // ===== 原神 =====
  static const _genshinImpact = Game(
    name: '原神',
    icon: '⚡',
    color: Color(0xFF4A90D9),
    versions: [
      Version(
        name: '5.6「悖理」',
        date: '2025-05',
        mainQuest: '悖理',
        characters: [
          Character(name: '爱可菲', rarity: '5', element: '冰', imageUrl: '', isNew: true),
          Character(name: '娜维娅', rarity: '5', element: '岩', imageUrl: ''),
          Character(name: '基尼奇', rarity: '5', element: '草', imageUrl: ''),
          Character(name: '雷电将军', rarity: '5', element: '雷', imageUrl: ''),
          Character(name: '伊法', rarity: '4', element: '风', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.5「灵蕈棋局」',
        date: '2025-04',
        mainQuest: '灵蕈棋局',
        characters: [
          Character(name: '梦见月瑞希', rarity: '5', element: '风', imageUrl: '', isNew: true),
          Character(name: '希诺宁', rarity: '5', element: '岩', imageUrl: ''),
          Character(name: '玛薇卡', rarity: '5', element: '火', imageUrl: ''),
          Character(name: '恰斯卡', rarity: '5', element: '风', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.4「彩糖与花火之宴」',
        date: '2025-02',
        mainQuest: '彩糖与花火之宴',
        characters: [
          Character(name: '玛薇卡', rarity: '5', element: '火', imageUrl: '', isNew: true),
          Character(name: '克洛琳德', rarity: '5', element: '雷', imageUrl: ''),
          Character(name: '希格雯', rarity: '5', element: '水', imageUrl: ''),
          Character(name: '蓝砚', rarity: '4', element: '冰', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.3「烈焰燃灼之巅」',
        date: '2025-01',
        mainQuest: '烈焰燃灼之巅',
        characters: [
          Character(name: '玛薇卡', rarity: '5', element: '火', imageUrl: '', isNew: true),
          Character(name: '阿蕾奇诺', rarity: '5', element: '火', imageUrl: ''),
          Character(name: '仆人', rarity: '5', element: '火', imageUrl: ''),
          Character(name: '蓝砚', rarity: '4', element: '冰', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.2「灵与火的交织」',
        date: '2024-12',
        mainQuest: '灵与火的交织',
        characters: [
          Character(name: '恰斯卡', rarity: '5', element: '风', imageUrl: '', isNew: true),
          Character(name: '希诺宁', rarity: '5', element: '岩', imageUrl: ''),
          Character(name: '钟离', rarity: '5', element: '岩', imageUrl: ''),
          Character(name: '欧洛伦', rarity: '4', element: '雷', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.1「荣花与炎之梦」',
        date: '2024-10',
        mainQuest: '荣花与炎之梦',
        characters: [
          Character(name: '希诺宁', rarity: '5', element: '岩', imageUrl: '', isNew: true),
          Character(name: '纳西妲', rarity: '5', element: '草', imageUrl: ''),
          Character(name: '妮露', rarity: '5', element: '水', imageUrl: ''),
          Character(name: '卡齐娜', rarity: '4', element: '岩', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '5.0「炽烈的还魂诗」',
        date: '2024-08',
        mainQuest: '炽烈的还魂诗',
        characters: [
          Character(name: '玛拉妮', rarity: '5', element: '水', imageUrl: '', isNew: true),
          Character(name: '基尼奇', rarity: '5', element: '草', imageUrl: '', isNew: true),
          Character(name: '卡齐娜', rarity: '4', element: '岩', imageUrl: '', isNew: true),
          Character(name: '班尼特', rarity: '4', element: '火', imageUrl: ''),
        ],
      ),
      Version(
        name: '4.8「欢夏！邪龙？童话国！」',
        date: '2024-07',
        mainQuest: '欢夏！邪龙？童话国！',
        characters: [
          Character(name: '艾梅莉埃', rarity: '5', element: '草', imageUrl: '', isNew: true),
          Character(name: '夜兰', rarity: '5', element: '水', imageUrl: ''),
          Character(name: '妮露', rarity: '5', element: '水', imageUrl: ''),
          Character(name: '娜维娅', rarity: '5', element: '岩', imageUrl: ''),
        ],
      ),
      Version(
        name: '4.7「纺坠终久之梦」',
        date: '2024-06',
        mainQuest: '纺坠终久之梦',
        characters: [
          Character(name: '克洛琳德', rarity: '5', element: '雷', imageUrl: '', isNew: true),
          Character(name: '希格雯', rarity: '5', element: '水', imageUrl: '', isNew: true),
          Character(name: '芙宁娜', rarity: '5', element: '水', imageUrl: ''),
          Character(name: '阿蕾奇诺', rarity: '5', element: '火', imageUrl: ''),
        ],
      ),
      Version(
        name: '4.6「盛典与慧业」',
        date: '2024-04',
        mainQuest: '盛典与慧业',
        characters: [
          Character(name: '阿蕾奇诺', rarity: '5', element: '火', imageUrl: '', isNew: true),
          Character(name: '流浪者', rarity: '5', element: '风', imageUrl: ''),
          Character(name: '林尼', rarity: '5', element: '火', imageUrl: ''),
          Character(name: '琳妮特', rarity: '4', element: '风', imageUrl: ''),
        ],
      ),
    ],
  );

  // ===== 崩坏：星穹铁道 =====
  static const _honkaiStarRail = Game(
    name: '崩坏：星穹铁道',
    icon: '⭐',
    color: Color(0xFF6C5CE7),
    versions: [
      Version(
        name: '3.7「再见，匹诺康尼」',
        date: '2025-11',
        mainQuest: '再见，匹诺康尼',
        characters: [
          Character(name: '遐蝶', rarity: '5', element: '虚无', imageUrl: '', isNew: true),
          Character(name: '风堇', rarity: '5', element: '同谐', imageUrl: '', isNew: true),
          Character(name: '缇宝', rarity: '5', element: '智识', imageUrl: '', isNew: true),
          Character(name: '白厄', rarity: '5', element: '毁灭', imageUrl: ''),
          Character(name: '赛飞儿', rarity: '5', element: '巡猎', imageUrl: ''),
          Character(name: '万敌', rarity: '5', element: '存护', imageUrl: ''),
        ],
      ),
      Version(
        name: '3.3「云璃」',
        date: '2025-04',
        mainQuest: '云璃',
        characters: [
          Character(name: '风堇', rarity: '5', element: '同谐', imageUrl: '', isNew: true),
          Character(name: '赛飞儿', rarity: '5', element: '巡猎', imageUrl: '', isNew: true),
          Character(name: '云璃', rarity: '5', element: '毁灭', imageUrl: ''),
          Character(name: '花火', rarity: '5', element: '同谐', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.7「尘缘」',
        date: '2024-11',
        mainQuest: '尘缘',
        characters: [
          Character(name: '星期日', rarity: '5', element: '同谐', imageUrl: '', isNew: true),
          Character(name: '忘归人', rarity: '5', element: '虚无', imageUrl: '', isNew: true),
          Character(name: '景元', rarity: '5', element: '智识', imageUrl: ''),
          Character(name: '流萤', rarity: '5', element: '毁灭', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.6「明霄竞武」',
        date: '2024-10',
        mainQuest: '明霄竞武',
        characters: [
          Character(name: '乱破', rarity: '5', element: '毁灭', imageUrl: '', isNew: true),
          Character(name: '花火', rarity: '5', element: '同谐', imageUrl: ''),
          Character(name: '黑天鹅', rarity: '5', element: '虚无', imageUrl: ''),
          Character(name: '黄泉', rarity: '5', element: '虚无', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.5「碧羽飞黄」',
        date: '2024-09',
        mainQuest: '碧羽飞黄',
        characters: [
          Character(name: '飞霄', rarity: '5', element: '巡猎', imageUrl: '', isNew: true),
          Character(name: '灵砂', rarity: '5', element: '丰饶', imageUrl: '', isNew: true),
          Character(name: '镜流', rarity: '5', element: '毁灭', imageUrl: ''),
          Character(name: '知更鸟', rarity: '5', element: '同谐', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.4「初花剑影」',
        date: '2024-08',
        mainQuest: '初花剑影',
        characters: [
          Character(name: '云璃', rarity: '5', element: '毁灭', imageUrl: '', isNew: true),
          Character(name: '椒丘', rarity: '5', element: '同谐', imageUrl: '', isNew: true),
          Character(name: '藿藿', rarity: '5', element: '丰饶', imageUrl: ''),
          Character(name: '阮梅', rarity: '5', element: '同谐', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.3「神锋有归」',
        date: '2024-06',
        mainQuest: '神锋有归',
        characters: [
          Character(name: '流萤', rarity: '5', element: '毁灭', imageUrl: '', isNew: true),
          Character(name: '翡翠', rarity: '5', element: '智识', imageUrl: '', isNew: true),
          Character(name: '银枝', rarity: '5', element: '智识', imageUrl: ''),
          Character(name: '符玄', rarity: '5', element: '存护', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.2「等醒来再哭泣」',
        date: '2024-05',
        mainQuest: '等醒来再哭泣',
        characters: [
          Character(name: '知更鸟', rarity: '5', element: '同谐', imageUrl: '', isNew: true),
          Character(name: '波提欧', rarity: '5', element: '巡猎', imageUrl: '', isNew: true),
          Character(name: '砂金', rarity: '5', element: '存护', imageUrl: ''),
          Character(name: '花火', rarity: '5', element: '同谐', imageUrl: ''),
        ],
      ),
    ],
  );

  // ===== 绝区零 =====
  static const _zenlessZoneZero = Game(
    name: '绝区零',
    icon: '🎯',
    color: Color(0xFF00B894),
    versions: [
      Version(
        name: '2.4「将临未抵的深渊」',
        date: '2025-11',
        mainQuest: '将临未抵的深渊',
        characters: [
          Character(name: '般岳', rarity: 'S', element: '火·命破', imageUrl: '', isNew: true),
          Character(name: '艾莲', rarity: 'S', element: '冰·强攻', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.7「飞鸟与鱼」',
        date: '2025-04',
        mainQuest: '飞鸟与鱼',
        characters: [
          Character(name: '薇薇安', rarity: 'S', element: '以太·支援', imageUrl: '', isNew: true),
          Character(name: '雨果', rarity: 'S', element: '物理·强攻', imageUrl: '', isNew: true),
          Character(name: '莱特', rarity: 'S', element: '火·强攻', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.6「昨日重现」',
        date: '2025-03',
        mainQuest: '昨日重现',
        characters: [
          Character(name: '伊芙琳', rarity: 'S', element: '冰·击破', imageUrl: '', isNew: true),
          Character(name: '青衣', rarity: 'S', element: '电·强攻', imageUrl: ''),
          Character(name: '妮可', rarity: 'A', element: '以太·支援', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.5「来自空洞的回响」',
        date: '2025-01',
        mainQuest: '来自空洞的回响',
        characters: [
          Character(name: '浅羽悠真', rarity: 'S', element: '电·强攻', imageUrl: '', isNew: true),
          Character(name: '柳', rarity: 'S', element: '冰·强攻', imageUrl: ''),
          Character(name: '珂蕾妲', rarity: 'S', element: '火·支援', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.4「星流霆击」',
        date: '2024-12',
        mainQuest: '星流霆击',
        characters: [
          Character(name: '月城柳', rarity: 'S', element: '冰·强攻', imageUrl: '', isNew: true),
          Character(name: '莱特', rarity: 'S', element: '火·强攻', imageUrl: '', isNew: true),
          Character(name: '格莉丝', rarity: 'S', element: '电·异常', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.3「以眼还眼」',
        date: '2024-11',
        mainQuest: '以眼还眼',
        characters: [
          Character(name: '赛斯', rarity: 'A', element: '物理·防护', imageUrl: '', isNew: true),
          Character(name: '朱鸢', rarity: 'S', element: '火·强攻', imageUrl: ''),
          Character(name: '丽娜', rarity: 'S', element: '冰·支援', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.2「空洞迷途」',
        date: '2024-09',
        mainQuest: '空洞迷途',
        characters: [
          Character(name: '凯撒', rarity: 'S', element: '物理·强攻', imageUrl: '', isNew: true),
          Character(name: '柏妮思', rarity: 'S', element: '火·异常', imageUrl: '', isNew: true),
          Character(name: '安东', rarity: 'A', element: '电·强攻', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.1「卧虎藏龙」',
        date: '2024-08',
        mainQuest: '卧虎藏龙',
        characters: [
          Character(name: '青衣', rarity: 'S', element: '电·强攻', imageUrl: '', isNew: true),
          Character(name: '妮可', rarity: 'A', element: '以太·支援', imageUrl: ''),
          Character(name: '比利', rarity: 'A', element: '物理·强攻', imageUrl: ''),
        ],
      ),
    ],
  );

  // ===== 鸣潮 =====
  static const _wutheringWaves = Game(
    name: '鸣潮',
    icon: '🌊',
    color: Color(0xFF0984E3),
    versions: [
      Version(
        name: '3.0「我们生而眺望」',
        date: '2025-12',
        mainQuest: '我们生而眺望',
        characters: [
          Character(name: '琳奈', rarity: '5', element: '冷凝', imageUrl: '', isNew: true),
          Character(name: '莫宁', rarity: '5', element: '热熔', imageUrl: '', isNew: true),
          Character(name: '卡提希娅', rarity: '5', element: '气动', imageUrl: ''),
          Character(name: '夏空', rarity: '5', element: '导电', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.8「拂晓之刻」',
        date: '2025-10',
        mainQuest: '拂晓之刻',
        characters: [
          Character(name: '守岸人', rarity: '5', element: '衍射', imageUrl: '', isNew: true),
          Character(name: '相里要', rarity: '5', element: '冷凝', imageUrl: ''),
          Character(name: '今汐', rarity: '5', element: '气动', imageUrl: ''),
          Character(name: '长离', rarity: '5', element: '热熔', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.7「破晓之章」',
        date: '2025-08',
        mainQuest: '破晓之章',
        characters: [
          Character(name: '折枝', rarity: '5', element: '冷凝', imageUrl: '', isNew: true),
          Character(name: '吟霖', rarity: '5', element: '导电', imageUrl: ''),
          Character(name: '忌炎', rarity: '5', element: '气动', imageUrl: ''),
          Character(name: '维里奈', rarity: '5', element: '衍射', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.6「燃火之途」',
        date: '2025-06',
        mainQuest: '燃火之途',
        characters: [
          Character(name: '炽霞', rarity: '5', element: '热熔', imageUrl: '', isNew: true),
          Character(name: '漂泊者', rarity: '5', element: '衍射', imageUrl: ''),
          Character(name: '丹瑾', rarity: '5', element: '冷凝', imageUrl: ''),
          Character(name: '渊武', rarity: '5', element: '气动', imageUrl: ''),
        ],
      ),
      Version(
        name: '2.5「鸣潮之始」',
        date: '2025-04',
        mainQuest: '鸣潮之始',
        characters: [
          Character(name: '椿', rarity: '5', element: '气动', imageUrl: '', isNew: true),
          Character(name: '安可', rarity: '5', element: '热熔', imageUrl: ''),
          Character(name: '凌阳', rarity: '5', element: '冷凝', imageUrl: ''),
          Character(name: '散华', rarity: '5', element: '导电', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.2「万象新声」',
        date: '2024-08',
        mainQuest: '万象新声',
        characters: [
          Character(name: '相里要', rarity: '5', element: '冷凝', imageUrl: '', isNew: true),
          Character(name: '吟霖', rarity: '5', element: '导电', imageUrl: '', isNew: true),
          Character(name: '忌炎', rarity: '5', element: '气动', imageUrl: ''),
          Character(name: '维里奈', rarity: '5', element: '衍射', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.1「初鸣」',
        date: '2024-06',
        mainQuest: '初鸣',
        characters: [
          Character(name: '今汐', rarity: '5', element: '气动', imageUrl: '', isNew: true),
          Character(name: '长离', rarity: '5', element: '热熔', imageUrl: '', isNew: true),
          Character(name: '漂泊者', rarity: '5', element: '衍射', imageUrl: ''),
          Character(name: '丹瑾', rarity: '5', element: '冷凝', imageUrl: ''),
        ],
      ),
    ],
  );

  // ===== 异环 =====
  static const _arteryGear = Game(
    name: '异环',
    icon: '🔮',
    color: Color(0xFFE17055),
    versions: [
      Version(
        name: '1.3「残虹」',
        date: '2026-07',
        mainQuest: '残虹篇',
        characters: [
          Character(name: '残虹', rarity: 'S', element: '咒·太刀', imageUrl: '', isNew: true),
          Character(name: '灵可', rarity: 'S', element: '灵·伴身', imageUrl: '', isNew: true),
        ],
      ),
      Version(
        name: '1.2「九百九十九夜」',
        date: '2026-07',
        mainQuest: '九百九十九夜',
        characters: [
          Character(name: '真红', rarity: 'S', element: '火·太刀', imageUrl: '', isNew: true),
          Character(name: '伊洛伊', rarity: 'S', element: '冰·双枪', imageUrl: '', isNew: true),
          Character(name: '早雾', rarity: 'S', element: '灵·弓', imageUrl: ''),
          Character(name: '白藏', rarity: 'S', element: '咒·法杖', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.1「明音凛」',
        date: '2026-04',
        mainQuest: '明音凛篇',
        characters: [
          Character(name: '明音凛', rarity: 'S', element: '冰·太刀', imageUrl: '', isNew: true),
          Character(name: '曳尔沐', rarity: 'S', element: '火·双枪', imageUrl: ''),
          Character(name: '哈索尔', rarity: 'S', element: '灵·弓', imageUrl: ''),
          Character(name: '法帝娅', rarity: 'S', element: '咒·法杖', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.0「启程」',
        date: '2026-01',
        mainQuest: '启程篇',
        characters: [
          Character(name: '早雾', rarity: 'S', element: '灵·弓', imageUrl: '', isNew: true),
          Character(name: '白藏', rarity: 'S', element: '咒·法杖', imageUrl: '', isNew: true),
          Character(name: '哈索尔', rarity: 'S', element: '灵·弓', imageUrl: '', isNew: true),
          Character(name: '法帝娅', rarity: 'S', element: '咒·法杖', imageUrl: '', isNew: true),
          Character(name: '达芙蒂尔', rarity: 'S', element: '灵·弓', imageUrl: '', isNew: true),
          Character(name: '九原', rarity: 'S', element: '咒·法杖', imageUrl: '', isNew: true),
        ],
      ),
    ],
  );

  // ===== 明日方舟：终末地 =====
  static const _arknightsEndfield = Game(
    name: '明日方舟：终末地',
    icon: '🛡️',
    color: Color(0xFF636E72),
    versions: [
      Version(
        name: '公测「启程」',
        date: '2026-01',
        mainQuest: '序章·应龙关',
        characters: [
          Character(name: '诀', rarity: '6', element: '近卫', imageUrl: '', isNew: true),
          Character(name: '菲亚梅塔', rarity: '6', element: '术师', imageUrl: '', isNew: true),
          Character(name: '闪灵', rarity: '6', element: '医疗', imageUrl: '', isNew: true),
          Character(name: '能天使', rarity: '6', element: '狙击', imageUrl: ''),
          Character(name: '银灰', rarity: '6', element: '近卫', imageUrl: ''),
          Character(name: '塞雷娅', rarity: '6', element: '重装', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.1「长夜终明」',
        date: '2026-04',
        mainQuest: '长夜终明',
        characters: [
          Character(name: '逻各斯', rarity: '6', element: '术师', imageUrl: '', isNew: true),
          Character(name: '阿', rarity: '6', element: '近卫', imageUrl: '', isNew: true),
          Character(name: '艾雅法拉', rarity: '6', element: '术师', imageUrl: ''),
          Character(name: '陈', rarity: '6', element: '近卫', imageUrl: ''),
        ],
      ),
      Version(
        name: '1.2「破晓之光」',
        date: '2026-07',
        mainQuest: '破晓之光',
        characters: [
          Character(name: '黑键', rarity: '6', element: '术师', imageUrl: '', isNew: true),
          Character(name: '琴柳', rarity: '6', element: '先锋', imageUrl: '', isNew: true),
          Character(name: '棘刺', rarity: '6', element: '近卫', imageUrl: ''),
          Character(name: '夜莺', rarity: '6', element: '医疗', imageUrl: ''),
        ],
      ),
    ],
  );
}
