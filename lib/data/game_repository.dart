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

  // ===== 原神（1.0 ~ 月之八）=====
  static const _genshinImpact = Game(
    name: '原神',
    icon: '⚡',
    color: Color(0xFF4A90D9),
    versions: [
      // ===== 挪德卡莱 =====
      Version(name: '月之八「映夏！归乡？千灵节！」', date: '2026-07', mainQuest: '空月之歌·谐谑', summary: '挪德卡莱千灵节活动', characters: [Character(name: '夏洛蒂', rarity: '5', element: '冰', isNew: true), Character(name: '桑多涅', rarity: '5', element: '岩')]),
      Version(name: '月之七「虚空劫灰往世书」', date: '2026-05', mainQuest: '空月之歌·行律', summary: '探索挪德卡莱虚空区域', characters: [Character(name: '尼可', rarity: '5', element: '火', isNew: true), Character(name: '布伦妮', rarity: '5', element: '水', isNew: true), Character(name: '洛恩', rarity: '5', element: '风')]),
      Version(name: '月之六「逢归的谶羽」', date: '2026-04', mainQuest: '空月之歌·旋舞', summary: '蒙德风车镇、荆夫港开放', characters: [Character(name: '莉奈雅', rarity: '5', element: '风', isNew: true), Character(name: '法尔伽', rarity: '5', element: '火')]),
      Version(name: '月之五「捕风的归客」', date: '2026-02', mainQuest: '空月之歌·变奏', summary: '风花节活动', characters: [Character(name: '幻礼·星兑', rarity: '5', element: '冰', isNew: true), Character(name: '法尔伽', rarity: '5', element: '火')]),
      Version(name: '月之四「如果在冬夜，一个旅人」', date: '2026-01', mainQuest: '空月之歌·终曲', summary: '挪德卡莱主线高潮', characters: [Character(name: '菈乌玛', rarity: '5', element: '草', isNew: true), Character(name: '纳西妲', rarity: '5', element: '草')]),
      Version(name: '月之三「仿若无因飘落的轻雨」', date: '2025-11', mainQuest: '空月之歌·间奏', summary: '海灯节，璃月新篇章', characters: [Character(name: '雅珂达', rarity: '5', element: '水', isNew: true), Character(name: '希格雯', rarity: '5', element: '水')]),
      Version(name: '月之二「罪人的终幕」', date: '2025-10', mainQuest: '空月之歌·第二幕', summary: '挪德卡莱主线推进', characters: [Character(name: '桑多涅', rarity: '5', element: '岩', isNew: true), Character(name: '钟离', rarity: '5', element: '岩')]),
      Version(name: '月之一「空月之歌」', date: '2025-09', mainQuest: '空月之歌·第一幕', summary: '挪德卡莱新国家开放', characters: [Character(name: '菈乌玛', rarity: '5', element: '草', isNew: true), Character(name: '纳西妲', rarity: '5', element: '草')]),
      // ===== 纳塔 =====
      Version(name: '5.8「绘夏！烈日？度假村！」', date: '2025-07', mainQuest: '炽烈的还魂诗·终幕', summary: '纳塔悠悠度假村夏日活动', characters: [Character(name: '梦见月瑞希', rarity: '5', element: '风'), Character(name: '玛拉妮', rarity: '5', element: '水')]),
      Version(name: '5.7「你存在的时空」', date: '2025-06', mainQuest: '炽烈的还魂诗·第七幕', summary: '纳塔主线完结，旅人章', characters: [Character(name: '恰斯卡', rarity: '5', element: '风', isNew: true), Character(name: '玛薇卡', rarity: '5', element: '火')]),
      Version(name: '5.6「悖理」', date: '2025-05', mainQuest: '炽烈的还魂诗·第六幕', summary: '纳塔主线高潮', characters: [Character(name: '爱可菲', rarity: '5', element: '冰', isNew: true), Character(name: '娜维娅', rarity: '5', element: '岩'), Character(name: '基尼奇', rarity: '5', element: '草'), Character(name: '雷电将军', rarity: '5', element: '雷')]),
      Version(name: '5.5「灵蕈棋局」', date: '2025-04', mainQuest: '炽烈的还魂诗·第五幕', summary: '纳塔灵蕈活动', characters: [Character(name: '梦见月瑞希', rarity: '5', element: '风', isNew: true), Character(name: '希诺宁', rarity: '5', element: '岩'), Character(name: '玛薇卡', rarity: '5', element: '火'), Character(name: '恰斯卡', rarity: '5', element: '风', isNew: true)]}),
      Version(name: '5.4「彩糖与花火之宴」', date: '2025-02', mainQuest: '炽烈的还魂诗·第四幕', summary: '海灯节，璃月庆典', characters: [Character(name: '玛薇卡', rarity: '5', element: '火', isNew: true), Character(name: '克洛琳德', rarity: '5', element: '雷'), Character(name: '希格雯', rarity: '5', element: '水')]),
      Version(name: '5.3「烈焰燃灼之巅」', date: '2025-01', mainQuest: '炽烈的还魂诗·第三幕', summary: '纳塔主线高潮，火神登场', characters: [Character(name: '玛薇卡', rarity: '5', element: '火', isNew: true), Character(name: '阿蕾奇诺', rarity: '5', element: '火')]),
      Version(name: '5.2「灵与火的交织」', date: '2024-12', mainQuest: '炽烈的还魂诗·第二幕', summary: '纳塔主线推进', characters: [Character(name: '恰斯卡', rarity: '5', element: '风', isNew: true), Character(name: '希诺宁', rarity: '5', element: '岩'), Character(name: '钟离', rarity: '5', element: '岩')]),
      Version(name: '5.1「荣花与炎之梦」', date: '2024-10', mainQuest: '炽烈的还魂诗·第一幕', summary: '纳塔主线开始', characters: [Character(name: '希诺宁', rarity: '5', element: '岩', isNew: true), Character(name: '纳西妲', rarity: '5', element: '草'), Character(name: '妮露', rarity: '5', element: '水')]),
      Version(name: '5.0「炽烈的还魂诗」', date: '2024-08', mainQuest: '炽烈的还魂诗·序章', summary: '纳塔新国家开放', characters: [Character(name: '玛拉妮', rarity: '5', element: '水', isNew: true), Character(name: '基尼奇', rarity: '5', element: '草', isNew: true)]}),
      // ===== 枫丹 =====
      Version(name: '4.8「欢夏！邪龙？童话国！」', date: '2024-07', mainQuest: '罪人终幕', summary: '枫丹夏日童话活动', characters: [Character(name: '艾梅莉埃', rarity: '5', element: '草', isNew: true), Character(name: '夜兰', rarity: '5', element: '水'), Character(name: '妮露', rarity: '5', element: '水'), Character(name: '娜维娅', rarity: '5', element: '岩')]),
      Version(name: '4.7「纺坠终久之梦」', date: '2024-06', mainQuest: '罪人终幕', summary: '枫丹主线完结', characters: [Character(name: '克洛琳德', rarity: '5', element: '雷', isNew: true), Character(name: '希格雯', rarity: '5', element: '水', isNew: true), Character(name: '芙宁娜', rarity: '5', element: '水'), Character(name: '阿蕾奇诺', rarity: '5', element: '火')]),
      Version(name: '4.6「盛典与慧业」', date: '2024-04', mainQuest: '罪人终幕', summary: '枫丹科学院活动', characters: [Character(name: '阿蕾奇诺', rarity: '5', element: '火', isNew: true), Character(name: '流浪者', rarity: '5', element: '风'), Character(name: '林尼', rarity: '5', element: '火')]),
      Version(name: '4.5「千灵映影节」', date: '2024-03', mainQuest: '罪人终幕', summary: '枫丹千灵节活动', characters: [Character(name: '千织', rarity: '5', element: '岩', isNew: true), Character(name: '荒泷一斗', rarity: '5', element: '岩'), Character(name: '那维莱特', rarity: '5', element: '水'), Character(name: '枫原万叶', rarity: '5', element: '风')]),
      Version(name: '4.4「彩鹞栉春风」', date: '2024-01', mainQuest: '罪人终幕', summary: '海灯节，璃月庆典', characters: [Character(name: '闲云', rarity: '5', element: '风', isNew: true), Character(name: '纳西妲', rarity: '5', element: '草'), Character(name: '八重神子', rarity: '5', element: '雷')]),
      Version(name: '4.3「蔷薇与铳枪」', date: '2023-12', mainQuest: '罪人终幕', summary: '枫丹主线推进', characters: [Character(name: '娜维娅', rarity: '5', element: '岩', isNew: true), Character(name: '神里绫人', rarity: '5', element: '水'), Character(name: '雷电将军', rarity: '5', element: '雷')]),
      Version(name: '4.2「罪人终幕」', date: '2023-11', mainQuest: '罪人终幕', summary: '枫丹主线高潮，水神陨落', characters: [Character(name: '芙宁娜', rarity: '5', element: '水', isNew: true), Character(name: '白术', rarity: '5', element: '草'), Character(name: '赛诺', rarity: '5', element: '雷')]),
      Version(name: '4.1「向深水中的晨星」', date: '2023-10', mainQuest: '向深水中的晨星', summary: '枫丹主线推进，梅洛彼得堡', characters: [Character(name: '那维莱特', rarity: '5', element: '水', isNew: true), Character(name: '莱欧斯利', rarity: '5', element: '冰', isNew: true), Character(name: '温迪', rarity: '5', element: '风'), Character(name: '胡桃', rarity: '5', element: '火')]),
      Version(name: '4.0「仿若无因飘落的轻雨」', date: '2023-08', mainQuest: '仿若无因飘落的轻雨', summary: '枫丹新国家开放', characters: [Character(name: '林尼', rarity: '5', element: '火', isNew: true), Character(name: '钟离', rarity: '5', element: '岩'), Character(name: '夜兰', rarity: '5', element: '水')]),
      // ===== 须弥 =====
      Version(name: '3.8「清夏！乐园？大秘境！」', date: '2023-07', mainQuest: '虚空鼓动劫火高扬', summary: '须弥夏日乐园活动', characters: [Character(name: '流浪者', rarity: '5', element: '风'), Character(name: '可莉', rarity: '5', element: '火'), Character(name: '优菈', rarity: '5', element: '冰')]),
      Version(name: '3.7「决斗！召唤之巅！」', date: '2023-05', mainQuest: '虚空鼓动劫火高扬', summary: '七圣召唤大赛', characters: [Character(name: '八重神子', rarity: '5', element: '雷'), Character(name: '宵宫', rarity: '5', element: '火'), Character(name: '艾尔海森', rarity: '5', element: '草'), Character(name: '枫原万叶', rarity: '5', element: '风')]),
      Version(name: '3.6「盛典与慧业」', date: '2023-04', mainQuest: '虚空鼓动劫火高扬', summary: '须弥学院庆典', characters: [Character(name: '白术', rarity: '5', element: '草', isNew: true), Character(name: '纳西妲', rarity: '5', element: '草'), Character(name: '妮露', rarity: '5', element: '水')]),
      Version(name: '3.5「风花的呼吸」', date: '2023-03', mainQuest: '虚空鼓动劫火高扬', summary: '蒙德风花节', characters: [Character(name: '迪希雅', rarity: '5', element: '火', isNew: true), Character(name: '赛诺', rarity: '5', element: '雷'), Character(name: '神里绫华', rarity: '5', element: '冰')]),
      Version(name: '3.4「磬弦奏华夜」', date: '2023-01', mainQuest: '虚空鼓动劫火高扬', summary: '海灯节，璃月庆典', characters: [Character(name: '艾尔海森', rarity: '5', element: '草', isNew: true), Character(name: '魈', rarity: '5', element: '风'), Character(name: '胡桃', rarity: '5', element: '火')]),
      Version(name: '3.3「六入尽明诸相皆无」', date: '2022-12', mainQuest: '虚空鼓动劫火高扬', summary: '散兵洗白，流浪者登场', characters: [Character(name: '流浪者', rarity: '5', element: '风', isNew: true), Character(name: '雷电将军', rarity: '5', element: '雷'), Character(name: '神里绫人', rarity: '5', element: '水')]),
      Version(name: '3.2「虚空鼓动劫火高扬」', date: '2022-11', mainQuest: '虚空鼓动劫火高扬', summary: '须弥主线完结，拯救纳西妲', characters: [Character(name: '纳西妲', rarity: '5', element: '草', isNew: true), Character(name: '宵宫', rarity: '5', element: '火'), Character(name: '八重神子', rarity: '5', element: '雷')]),
      Version(name: '3.1「赤土之王与三朝圣者」', date: '2022-10', mainQuest: '赤土之王与三朝圣者', summary: '须弥沙漠开放', characters: [Character(name: '赛诺', rarity: '5', element: '雷', isNew: true), Character(name: '妮露', rarity: '5', element: '水', isNew: true), Character(name: '温迪', rarity: '5', element: '风')]),
      Version(name: '3.0「千朵玫瑰带来的黎明」', date: '2022-08', mainQuest: '千朵玫瑰带来的黎明', summary: '须弥新国家开放', characters: [Character(name: '提纳里', rarity: '5', element: '草', isNew: true), Character(name: '钟离', rarity: '5', element: '岩'), Character(name: '甘雨', rarity: '5', element: '冰')]),
      // ===== 稻妻 =====
      Version(name: '2.8「仲夏！幻夜？奇想曲！」', date: '2022-07', mainQuest: '千手百眼天下人间', summary: '稻妻夏日活动', characters: [Character(name: '枫原万叶', rarity: '5', element: '风'), Character(name: '可莉', rarity: '5', element: '火'), Character(name: '宵宫', rarity: '5', element: '火')]),
      Version(name: '2.7「荒梦藏虞渊」', date: '2022-05', mainQuest: '千手百眼天下人间', summary: '层岩巨渊深层探索', characters: [Character(name: '夜兰', rarity: '5', element: '水', isNew: true), Character(name: '魈', rarity: '5', element: '风'), Character(name: '荒泷一斗', rarity: '5', element: '岩')]),
      Version(name: '2.6「流风眷堇庭」', date: '2022-03', mainQuest: '千手百眼天下人间', summary: '稻妻容彩祭，层岩巨渊开放', characters: [Character(name: '神里绫人', rarity: '5', element: '水', isNew: true), Character(name: '温迪', rarity: '5', element: '风'), Character(name: '雷电将军', rarity: '5', element: '雷')]),
      Version(name: '2.5「薄樱初绽时」', date: '2022-02', mainQuest: '千手百眼天下人间', summary: '三界路飨祭', characters: [Character(name: '八重神子', rarity: '5', element: '雷', isNew: true), Character(name: '雷电将军', rarity: '5', element: '雷'), Character(name: '珊瑚宫心海', rarity: '5', element: '水')]),
      Version(name: '2.4「飞彩镌流年」', date: '2022-01', mainQuest: '千手百眼天下人间', summary: '海灯节，渊下宫开放', characters: [Character(name: '申鹤', rarity: '5', element: '冰', isNew: true), Character(name: '魈', rarity: '5', element: '风'), Character(name: '甘雨', rarity: '5', element: '冰'), Character(name: '钟离', rarity: '5', element: '岩')]),
      Version(name: '2.3「皑尘与雪影」', date: '2021-11', mainQuest: '千手百眼天下人间', summary: '雪山活动', characters: [Character(name: '荒泷一斗', rarity: '5', element: '岩', isNew: true), Character(name: '阿贝多', rarity: '5', element: '岩'), Character(name: '优菈', rarity: '5', element: '冰')]),
      Version(name: '2.2「雾海悬谜境」', date: '2021-10', mainQuest: '千手百眼天下人间', summary: '鹤观岛开放', characters: [Character(name: '胡桃', rarity: '5', element: '火'), Character(name: '公子', rarity: '5', element: '水')]),
      Version(name: '2.1「韶光抚月天下人间」', date: '2021-09', mainQuest: '千手百眼天下人间', summary: '稻妻主线完结，逐月节', characters: [Character(name: '雷电将军', rarity: '5', element: '雷', isNew: true), Character(name: '珊瑚宫心海', rarity: '5', element: '水', isNew: true)]}),
      Version(name: '2.0「不动鸣神泡影断灭」', date: '2021-07', mainQuest: '不动鸣神泡影断灭', summary: '稻妻新国家开放', characters: [Character(name: '神里绫华', rarity: '5', element: '冰', isNew: true), Character(name: '枫原万叶', rarity: '5', element: '风', isNew: true), Character(name: '宵宫', rarity: '5', element: '火', isNew: true)]}),
      // ===== 蒙德璃月 =====
      Version(name: '1.6「盛夏！海岛？大冒险！」', date: '2021-06', mainQuest: '巨龙与自由之歌', summary: '金苹果群岛夏日活动', characters: [Character(name: '枫原万叶', rarity: '5', element: '风', isNew: true), Character(name: '可莉', rarity: '5', element: '火')]),
      Version(name: '1.5「玉扉绕尘歌」', date: '2021-04', mainQuest: '迫近的客星', summary: '尘歌壶系统上线', characters: [Character(name: '优菈', rarity: '5', element: '冰', isNew: true), Character(name: '钟离', rarity: '5', element: '岩')]),
      Version(name: '1.4「风花的邀约」', date: '2021-03', mainQuest: '迫近的客星', summary: '蒙德风花节', characters: [Character(name: '温迪', rarity: '5', element: '风'), Character(name: '公子', rarity: '5', element: '水')]),
      Version(name: '1.3「明霄升海平」', date: '2021-02', mainQuest: '迫近的客星', summary: '海灯节，璃月庆典', characters: [Character(name: '魈', rarity: '5', element: '风', isNew: true), Character(name: '刻晴', rarity: '5', element: '雷'), Character(name: '胡桃', rarity: '5', element: '火', isNew: true)]}),
      Version(name: '1.2「白垩与黑龙」', date: '2020-12', mainQuest: '迫近的客星', summary: '龙脊雪山开放', characters: [Character(name: '阿贝多', rarity: '5', element: '岩', isNew: true), Character(name: '甘雨', rarity: '5', element: '冰', isNew: true)]}),
      Version(name: '1.1「迫近的客星」', date: '2020-11', mainQuest: '迫近的客星', summary: '璃月主线完结', characters: [Character(name: '公子', rarity: '5', element: '水', isNew: true), Character(name: '钟离', rarity: '5', element: '岩', isNew: true)]}),
      Version(name: '1.0「捕风的异乡人」', date: '2020-09', mainQuest: '捕风的异乡人', summary: '游戏公测，蒙德璃月开放', characters: [Character(name: '温迪', rarity: '5', element: '风', isNew: true), Character(name: '可莉', rarity: '5', element: '火', isNew: true)]}),
    ],
  );

  // ===== 崩坏：星穹铁道（1.0 ~ 4.4）=====
  static const _honkaiStarRail = Game(
    name: '崩坏：星穹铁道',
    icon: '⭐',
    color: Color(0xFF6C5CE7),
    versions: [
      // ===== 4.x =====
      Version(name: '4.4 Fate联动', date: '2026-07', mainQuest: 'Fate联动', summary: 'Fate二期联动，SP姬子登场', characters: [Character(name: '姬子·启行', rarity: '5', element: '火·智识', isNew: true), Character(name: '远坂凛', rarity: '5', element: '量子·智识', isNew: true), Character(name: '吉尔伽美什', rarity: '5', element: '虚数·毁灭', isNew: true), Character(name: '花火', rarity: '5', element: '火·同谐'), Character(name: '丹恒·腾荒', rarity: '5', element: '风·毁灭'), Character(name: '长夜月', rarity: '5', element: '冰·存护')]),
      Version(name: '4.3「沉于生者的忘川」', date: '2026-06', mainQuest: '翁法罗斯篇', summary: '翁法罗斯主线推进', characters: [Character(name: '昔涟', rarity: '5', element: '虚数·丰饶', isNew: true), Character(name: '白厄', rarity: '5', element: '火·毁灭'), Character(name: '万敌', rarity: '5', element: '物理·存护'), Character(name: '赛飞儿', rarity: '5', element: '风·巡猎')]),
      Version(name: '4.2「如是，众生欢笑不已」', date: '2026-04', mainQuest: '翁法罗斯篇', summary: '翁法罗斯主线推进', characters: [Character(name: '遐蝶', rarity: '5', element: '虚数·虚无', isNew: true), Character(name: '黄泉', rarity: '5', element: '雷·虚无'), Character(name: '椒丘', rarity: '5', element: '火·同谐'), Character(name: '忘归人', rarity: '5', element: '火·虚无')]),
      Version(name: '4.1「献给破晓的失控」', date: '2026-03', mainQuest: '翁法罗斯篇', summary: '翁法罗斯主线推进', characters: [Character(name: '缇宝', rarity: '5', element: '冰·智识', isNew: true), Character(name: '云璃', rarity: '5', element: '火·毁灭'), Character(name: '藿藿', rarity: '5', element: '风·丰饶')]),
      Version(name: '4.0「满月是神不在的时间」', date: '2026-02', mainQuest: '翁法罗斯篇', summary: '翁法罗斯新星球开放', characters: [Character(name: '爻光', rarity: '5', element: '雷·智识', isNew: true), Character(name: '长夜月', rarity: '5', element: '冰·存护', isNew: true), Character(name: '风堇', rarity: '5', element: '风·同谐'), Character(name: '飞霄', rarity: '5', element: '风·巡猎')]),
      // ===== 3.x =====
      Version(name: '3.8「记忆是梦的开场白」', date: '2026-01', mainQuest: '匹诺康尼终章', summary: '匹诺康尼主线完结', characters: [Character(name: '大丽花', rarity: '5', element: '火·毁灭', isNew: true), Character(name: '流萤', rarity: '5', element: '火·毁灭'), Character(name: '忘归人', rarity: '5', element: '火·虚无'), Character(name: '灵砂', rarity: '5', element: '火·丰饶'), Character(name: '阿格莱雅', rarity: '5', element: '雷·存护'), Character(name: '星期日', rarity: '5', element: '虚数·同谐')]),
      Version(name: '3.7「成为昨日的明天」', date: '2025-12', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线高潮', characters: [Character(name: '遐蝶', rarity: '5', element: '虚数·虚无', isNew: true), Character(name: '风堇', rarity: '5', element: '风·同谐', isNew: true), Character(name: '缇宝', rarity: '5', element: '冰·智识', isNew: true), Character(name: '白厄', rarity: '5', element: '火·毁灭'), Character(name: '赛飞儿', rarity: '5', element: '风·巡猎'), Character(name: '万敌', rarity: '5', element: '物理·存护')]),
      Version(name: '3.6「于长夜重返大地」', date: '2025-11', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '大黑塔', rarity: '5', element: '冰·智识', isNew: true), Character(name: '飞霄', rarity: '5', element: '风·巡猎'), Character(name: '灵砂', rarity: '5', element: '火·丰饶'), Character(name: '翡翠', rarity: '5', element: '物理·智识')]),
      Version(name: '3.5「英雄未死之前」', date: '2025-10', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '阿格莱雅', rarity: '5', element: '雷·存护', isNew: true), Character(name: '波提欧', rarity: '5', element: '物理·巡猎'), Character(name: '知更鸟', rarity: '5', element: '物理·同谐'), Character(name: '银狼', rarity: '5', element: '量子·虚无')]),
      Version(name: '3.4「因为太阳将要毁伤」', date: '2025-09', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '花火', rarity: '5', element: '火·同谐'), Character(name: '丹恒·腾荒', rarity: '5', element: '风·毁灭', isNew: true), Character(name: '镜流', rarity: '5', element: '冰·毁灭')]),
      Version(name: '3.3「在黎明升起时坠落」', date: '2025-08', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '风堇', rarity: '5', element: '风·同谐', isNew: true), Character(name: '赛飞儿', rarity: '5', element: '风·巡猎', isNew: true), Character(name: '云璃', rarity: '5', element: '火·毁灭'), Character(name: '花火', rarity: '5', element: '火·同谐')]),
      Version(name: '3.2「走过安眠地的花丛」', date: '2025-07', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '遐蝶', rarity: '5', element: '虚数·虚无', isNew: true), Character(name: '黄泉', rarity: '5', element: '雷·虚无'), Character(name: '椒丘', rarity: '5', element: '火·同谐'), Character(name: '忘归人', rarity: '5', element: '火·虚无')]),
      Version(name: '3.1「门扉之启，王座之终」', date: '2025-06', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '缇宝', rarity: '5', element: '冰·智识', isNew: true), Character(name: '万敌', rarity: '5', element: '物理·存护', isNew: true), Character(name: '云璃', rarity: '5', element: '火·毁灭'), Character(name: '藿藿', rarity: '5', element: '风·丰饶')]),
      Version(name: '3.0「再创世的凯歌」', date: '2025-04', mainQuest: '匹诺康尼篇', summary: '匹诺康尼新星球开放', characters: [Character(name: '大黑塔', rarity: '5', element: '冰·智识', isNew: true), Character(name: '飞霄', rarity: '5', element: '风·巡猎'), Character(name: '灵砂', rarity: '5', element: '火·丰饶'), Character(name: '翡翠', rarity: '5', element: '物理·智识'), Character(name: '波提欧', rarity: '5', element: '物理·巡猎'), Character(name: '知更鸟', rarity: '5', element: '物理·同谐'), Character(name: '银狼', rarity: '5', element: '量子·虚无')]),
      // ===== 2.x =====
      Version(name: '2.7「在第八日启程」', date: '2025-01', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '星期日', rarity: '5', element: '虚数·同谐', isNew: true), Character(name: '忘归人', rarity: '5', element: '火·虚无', isNew: true), Character(name: '景元', rarity: '5', element: '雷·智识'), Character(name: '流萤', rarity: '5', element: '火·毁灭')]),
      Version(name: '2.6「毗乃昆尼末法世记」', date: '2024-12', mainQuest: '仙舟罗浮篇', summary: '仙舟主线推进', characters: [Character(name: '乱破', rarity: '5', element: '物理·毁灭', isNew: true), Character(name: '花火', rarity: '5', element: '火·同谐'), Character(name: '黑天鹅', rarity: '5', element: '风·虚无'), Character(name: '黄泉', rarity: '5', element: '雷·虚无')]),
      Version(name: '2.5「碧羽飞黄射天狼」', date: '2024-10', mainQuest: '仙舟罗浮篇', summary: '仙舟主线推进', characters: [Character(name: '飞霄', rarity: '5', element: '风·巡猎', isNew: true), Character(name: '灵砂', rarity: '5', element: '火·丰饶', isNew: true), Character(name: '镜流', rarity: '5', element: '冰·毁灭'), Character(name: '知更鸟', rarity: '5', element: '物理·同谐')]),
      Version(name: '2.4「明宵竞武试锋芒」', date: '2024-09', mainQuest: '仙舟罗浮篇', summary: '仙舟武斗会', characters: [Character(name: '云璃', rarity: '5', element: '火·毁灭', isNew: true), Character(name: '椒丘', rarity: '5', element: '火·同谐', isNew: true), Character(name: '藿藿', rarity: '5', element: '风·丰饶'), Character(name: '花火', rarity: '5', element: '火·同谐')]),
      Version(name: '2.3「再见，匹诺康尼」', date: '2024-07', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线完结', characters: [Character(name: '流萤', rarity: '5', element: '火·毁灭', isNew: true), Character(name: '翡翠', rarity: '5', element: '物理·智识', isNew: true), Character(name: '银枝', rarity: '5', element: '风·智识'), Character(name: '符玄', rarity: '5', element: '量子·存护')]),
      Version(name: '2.2「等醒来再哭泣」', date: '2024-06', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线推进', characters: [Character(name: '知更鸟', rarity: '5', element: '物理·同谐', isNew: true), Character(name: '波提欧', rarity: '5', element: '物理·巡猎', isNew: true), Character(name: '砂金', rarity: '5', element: '虚数·存护'), Character(name: '花火', rarity: '5', element: '火·同谐')]),
      Version(name: '2.1「狂热奔向深渊」', date: '2024-04', mainQuest: '匹诺康尼篇', summary: '匹诺康尼主线开始', characters: [Character(name: '砂金', rarity: '5', element: '虚数·存护', isNew: true), Character(name: '黄泉', rarity: '5', element: '雷·虚无', isNew: true), Character(name: '罗刹', rarity: '5', element: '虚数·丰饶')]),
      Version(name: '2.0「假如在午夜入梦」', date: '2024-02', mainQuest: '匹诺康尼篇', summary: '匹诺康尼新星球开放', characters: [Character(name: '黑天鹅', rarity: '5', element: '风·虚无', isNew: true), Character(name: '花火', rarity: '5', element: '火·同谐', isNew: true), Character(name: '景元', rarity: '5', element: '雷·智识')]),
      // ===== 1.x =====
      Version(name: '1.6「庸与神的冠冕」', date: '2024-01', mainQuest: '仙舟罗浮篇', summary: '仙舟主线完结', characters: [Character(name: '阮梅', rarity: '5', element: '冰·同谐', isNew: true), Character(name: '真理医生', rarity: '5', element: '虚数·智识', isNew: true), Character(name: '刃', rarity: '5', element: '风·毁灭')]),
      Version(name: '1.5「迷离幻夜谈」', date: '2023-12', mainQuest: '仙舟罗浮篇', summary: '仙舟主线推进', characters: [Character(name: '藿藿', rarity: '5', element: '风·丰饶', isNew: true), Character(name: '银枝', rarity: '5', element: '风·智识', isNew: true), Character(name: '符玄', rarity: '5', element: '量子·存护')]),
      Version(name: '1.4「冬梦激醒」', date: '2023-11', mainQuest: '贝洛伯格篇', summary: '贝洛伯格主线完结', characters: [Character(name: '镜流', rarity: '5', element: '冰·毁灭', isNew: true), Character(name: '托帕', rarity: '5', element: '火·智识', isNew: true), Character(name: '希儿', rarity: '5', element: '量子·巡猎')]),
      Version(name: '1.3「天镜映劫尘」', date: '2023-10', mainQuest: '仙舟罗浮篇', summary: '仙舟主线开始', characters: [Character(name: '符玄', rarity: '5', element: '量子·存护', isNew: true), Character(name: '丹恒·饮月', rarity: '5', element: '风·毁灭', isNew: true), Character(name: '景元', rarity: '5', element: '雷·智识')]),
      Version(name: '1.2「仙骸有终」', date: '2023-08', mainQuest: '贝洛伯格篇', summary: '贝洛伯格主线推进', characters: [Character(name: '刃', rarity: '5', element: '风·毁灭', isNew: true), Character(name: '卡芙卡', rarity: '5', element: '雷·虚无', isNew: true), Character(name: '银狼', rarity: '5', element: '量子·虚无')]),
      Version(name: '1.1「银河漫游」', date: '2023-06', mainQuest: '贝洛伯格篇', summary: '贝洛伯格主线推进', characters: [Character(name: '银狼', rarity: '5', element: '量子·虚无', isNew: true), Character(name: '罗刹', rarity: '5', element: '虚数·丰饶', isNew: true), Character(name: '景元', rarity: '5', element: '雷·智识')]),
      Version(name: '1.0「通往群星的轨道」', date: '2023-04', mainQuest: '序章', summary: '游戏公测，贝洛伯格开放', characters: [Character(name: '希儿', rarity: '5', element: '量子·巡猎', isNew: true), Character(name: '景元', rarity: '5', element: '雷·智识', isNew: true)]}),
    ],
  );

  // ===== 绝区零（1.0 ~ 3.0）=====
  static const _zenlessZoneZero = Game(
    name: '绝区零',
    icon: '🎯',
    color: Color(0xFF00B894),
    versions: [
      // ===== 3.x =====
      Version(name: '3.0「某个梦游者的自白」', date: '2026-06', mainQuest: '新艾利都篇', summary: '3.0大版本，Steam版同步上线', characters: [Character(name: '维琳娜', rarity: 'S', element: '风·异常', isNew: true), Character(name: '诺姆', rarity: 'S', element: '物理·强攻', isNew: true)]),
      // ===== 2.x =====
      Version(name: '2.8「新·艾利都日落时」', date: '2026-05', mainQuest: '新艾利都篇', summary: '2.x终章', characters: [Character(name: '般岳', rarity: 'S', element: '火·命破'), Character(name: '艾莲', rarity: 'S', element: '冰·强攻')]),
      Version(name: '2.7「英雄不死于往昔」', date: '2026-04', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '雨果', rarity: 'S', element: '物理·强攻'), Character(name: '莱特', rarity: 'S', element: '火·强攻')]),
      Version(name: '2.6「旧梦的安可曲」', date: '2026-03', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '薇薇安', rarity: 'S', element: '以太·支援'), Character(name: '伊芙琳', rarity: 'S', element: '冰·击破')]),
      Version(name: '2.5「微光引灯时」', date: '2026-02', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '浅羽悠真', rarity: 'S', element: '电·强攻'), Character(name: '柳', rarity: 'S', element: '冰·强攻')]),
      Version(name: '2.4「将临未抵的深渊」', date: '2025-12', mainQuest: '新艾利都篇', summary: '深渊剧情推进', characters: [Character(name: '般岳', rarity: 'S', element: '火·命破', isNew: true), Character(name: '艾莲', rarity: 'S', element: '冰·强攻')]),
      Version(name: '2.3「可曾记得梦」', date: '2025-11', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '月城柳', rarity: 'S', element: '冰·强攻'), Character(name: '珂蕾妲', rarity: 'S', element: '火·支援')]),
      Version(name: '2.2「不要温和地走入那良夜」', date: '2025-10', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '凯撒', rarity: 'S', element: '物理·强攻'), Character(name: '柏妮思', rarity: 'S', element: '火·异常')]),
      Version(name: '2.1「迟吟的浪涌」', date: '2025-09', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '青衣', rarity: 'S', element: '电·强攻'), Character(name: '格莉丝', rarity: 'S', element: '电·异常')]),
      Version(name: '2.0「云霞同归处」', date: '2025-07', mainQuest: '新艾利都篇', summary: '2.0大版本', characters: [Character(name: '朱鸢', rarity: 'S', element: '火·强攻'), Character(name: '丽娜', rarity: 'S', element: '冰·支援')]),
      // ===== 1.x =====
      Version(name: '1.7「将眼泪与过往一同埋葬」', date: '2025-06', mainQuest: '新艾利都篇', summary: '1.x终章', characters: [Character(name: '薇薇安', rarity: 'S', element: '以太·支援', isNew: true), Character(name: '雨果', rarity: 'S', element: '物理·强攻', isNew: true), Character(name: '莱特', rarity: 'S', element: '火·强攻')]),
      Version(name: '1.6「在被遗忘的废墟之上」', date: '2025-04', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '伊芙琳', rarity: 'S', element: '冰·击破', isNew: true), Character(name: '青衣', rarity: 'S', element: '电·强攻')]),
      Version(name: '1.5「闪耀的此刻」', date: '2025-02', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '浅羽悠真', rarity: 'S', element: '电·强攻', isNew: true), Character(name: '柳', rarity: 'S', element: '冰·强攻'), Character(name: '珂蕾妲', rarity: 'S', element: '火·支援')]),
      Version(name: '1.4「星流霆击」', date: '2024-12', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '月城柳', rarity: 'S', element: '冰·强攻', isNew: true), Character(name: '莱特', rarity: 'S', element: '火·强攻', isNew: true)]}),
      Version(name: '1.3「虚拟杀机」', date: '2024-11', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '柳', rarity: 'S', element: '冰·强攻', isNew: true), Character(name: '莱特', rarity: 'S', element: '火·强攻', isNew: true)]}),
      Version(name: '1.2「火狱骑行」', date: '2024-09', mainQuest: '新艾利都篇', summary: '空洞系统开放', characters: [Character(name: '凯撒', rarity: 'S', element: '物理·强攻', isNew: true), Character(name: '柏妮思', rarity: 'S', element: '火·异常', isNew: true)]}),
      Version(name: '1.1「卧底蓝调」', date: '2024-08', mainQuest: '新艾利都篇', summary: '主线剧情推进', characters: [Character(name: '青衣', rarity: 'S', element: '电·强攻', isNew: true), Character(name: '简', rarity: 'S', element: '物理·强攻', isNew: true)]}),
      Version(name: '1.0「您拨打的用户正在空洞中」', date: '2024-07', mainQuest: '序章', summary: '游戏公测', characters: [Character(name: '艾莲', rarity: 'S', element: '冰·强攻', isNew: true), Character(name: '朱鸢', rarity: 'S', element: '火·强攻', isNew: true)]}),
    ],
  );

  // ===== 鸣潮（1.0 ~ 3.5）=====
  static const _wutheringWaves = Game(
    name: '鸣潮',
    icon: '🌊',
    color: Color(0xFF0984E3),
    versions: [
      // ===== 3.x =====
      Version(name: '3.5「秧秧·玄翎」', date: '2026-07', mainQuest: '梦州篇', summary: '新地图梦州开放，秧秧SP登场', characters: [Character(name: '秧秧·玄翎', rarity: '5', element: '导电', isNew: true), Character(name: '琳奈', rarity: '5', element: '冷凝'), Character(name: '陆赫斯', rarity: '5', element: '热熔')]),
      Version(name: '3.4「未选择的梦」', date: '2026-06', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '弗洛洛', rarity: '5', element: '气动', isNew: true), Character(name: '露帕', rarity: '5', element: '热熔')]),
      Version(name: '3.3「自星海尽处回响」', date: '2026-04', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '洛可可', rarity: '5', element: '衍射', isNew: true), Character(name: '千咲', rarity: '5', element: '冷凝')]),
      Version(name: '3.2「于影中启」', date: '2026-03', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '嘉贝莉娜', rarity: '5', element: '热熔', isNew: true), Character(name: '夏空', rarity: '5', element: '导电')]),
      Version(name: '3.1「爱弥斯」', date: '2026-01', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '爱弥斯', rarity: '5', element: '冷凝', isNew: true), Character(name: '陆赫斯', rarity: '5', element: '热熔', isNew: true), Character(name: '千咲', rarity: '5', element: '冷凝'), Character(name: '露帕', rarity: '5', element: '热熔'), Character(name: '嘉贝莉娜', rarity: '5', element: '热熔')]),
      Version(name: '3.0「我们生而眺望」', date: '2025-12', mainQuest: '拉海洛篇', summary: '新区域拉海洛开放', characters: [Character(name: '琳奈', rarity: '5', element: '冷凝', isNew: true), Character(name: '莫宁', rarity: '5', element: '热熔', isNew: true), Character(name: '卡提希娅', rarity: '5', element: '气动'), Character(name: '夏空', rarity: '5', element: '导电')]),
      // ===== 2.x =====
      Version(name: '2.6「月以流明」', date: '2025-08', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '守岸人', rarity: '5', element: '衍射'), Character(name: '椿', rarity: '5', element: '气动'), Character(name: '弗洛洛', rarity: '5', element: '气动', isNew: true)]),
      Version(name: '2.5「生命不灭的轻歌」', date: '2025-07', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '折枝', rarity: '5', element: '冷凝'), Character(name: '相里要', rarity: '5', element: '冷凝'), Character(name: '弗洛洛', rarity: '5', element: '气动', isNew: true)]),
      Version(name: '2.4「轻掷欢呼之案」', date: '2025-06', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '卡提希娅', rarity: '5', element: '气动', isNew: true), Character(name: '露帕', rarity: '5', element: '热熔', isNew: true)]),
      Version(name: '2.3「焰行夏曲庆团圆」', date: '2025-04', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '赞妮', rarity: '5', element: '热熔', isNew: true), Character(name: '菲比', rarity: '5', element: '衍射', isNew: true), Character(name: '夏空', rarity: '5', element: '导电', isNew: true), Character(name: '今汐', rarity: '5', element: '气动'), Character(name: '长离', rarity: '5', element: '热熔')]),
      Version(name: '2.2「真伪倒悬于高塔」', date: '2025-03', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '珂莱塔', rarity: '5', element: '导电', isNew: true), Character(name: '守岸人', rarity: '5', element: '衍射')]),
      Version(name: '2.1「飞鸟轻鸣，浪涛欢唱」', date: '2025-02', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '菲比', rarity: '5', element: '衍射', isNew: true), Character(name: '赞妮', rarity: '5', element: '热熔', isNew: true)]),
      Version(name: '2.0「致缄默以欢歌」', date: '2025-01', mainQuest: '2.0新篇章', summary: '2.0大版本更新', characters: [Character(name: '洛可可', rarity: '5', element: '衍射', isNew: true), Character(name: '今汐', rarity: '5', element: '气动')]),
      // ===== 1.x =====
      Version(name: '1.5「暗夜叩响白昼之门」', date: '2024-12', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '椿', rarity: '5', element: '气动'), Character(name: '吟霖', rarity: '5', element: '导电'), Character(name: '相里要', rarity: '5', element: '冷凝')]),
      Version(name: '1.4「行至海岸尽头」', date: '2024-11', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '椿', rarity: '5', element: '气动', isNew: true), Character(name: '吟霖', rarity: '5', element: '导电'), Character(name: '相里要', rarity: '5', element: '冷凝')]),
      Version(name: '1.3「天上月华人如愿」', date: '2024-09', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '守岸人', rarity: '5', element: '衍射', isNew: true), Character(name: '忌炎', rarity: '5', element: '气动')]),
      Version(name: '1.2「天上月华人如愿」', date: '2024-08', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '折枝', rarity: '5', element: '冷凝', isNew: true), Character(name: '相里要', rarity: '5', element: '冷凝', isNew: true)]),
      Version(name: '1.1「往岁乘霄醒惊蛰」', date: '2024-06', mainQuest: '主线推进', summary: '主线剧情推进', characters: [Character(name: '今汐', rarity: '5', element: '气动', isNew: true), Character(name: '长离', rarity: '5', element: '热熔', isNew: true)]),
      Version(name: '1.0「鸣潮往复」', date: '2024-05', mainQuest: '序章', summary: '游戏公测', characters: [Character(name: '忌炎', rarity: '5', element: '气动', isNew: true), Character(name: '吟霖', rarity: '5', element: '导电', isNew: true)]),
    ],
  );

  // ===== 异环（1.0 ~ 1.2）=====
  static const _arteryGear = Game(
    name: '异环',
    icon: '🔮',
    color: Color(0xFFE17055),
    versions: [
      Version(name: '1.2「九百九十九夜」', date: '2026-07', mainQuest: '九百九十九夜', summary: '桌游RPG奇幻模式上线', characters: [Character(name: '真红', rarity: 'S', element: '光·强攻', isNew: true), Character(name: '伊洛伊', rarity: 'S', element: '灵·支援', isNew: true)]}),
      Version(name: '1.1「游梦洄廊」', date: '2026-05', mainQuest: '游梦洄廊', summary: '游乐园地图开放，船只载具上线', characters: [Character(name: '安魂曲', rarity: 'S', element: '暗·进攻', isNew: true), Character(name: '卡厄斯', rarity: 'S', element: '相·进攻', isNew: true)]}),
      Version(name: '1.0「启程」', date: '2026-04', mainQuest: '启程篇', summary: '游戏公测，21位S级角色', characters: [Character(name: '娜娜莉', rarity: 'S', element: '灵·强攻', isNew: true), Character(name: '浔', rarity: 'S', element: '光·支援', isNew: true)]}),
    ],
  );

  // ===== 明日方舟：终末地（1.0 ~ 1.4）=====
  static const _arknightsEndfield = Game(
    name: '明日方舟：终末地',
    icon: '🛡️',
    color: Color(0xFF636E72),
    versions: [
      Version(name: '1.4「半周年」', date: '2026-07', mainQuest: '北观禁土', summary: '半周年庆，新区域北观禁土', characters: [Character(name: '诀', rarity: '6', element: '近卫', isNew: true), Character(name: '梨诺', rarity: '6', element: '术师', isNew: true)]}),
      Version(name: '1.3「藏剑谷」', date: '2026-05', mainQuest: '藏剑谷', summary: '危机合约上线，新区域藏剑谷', characters: [Character(name: '弭弗', rarity: '6', element: '近卫', isNew: true), Character(name: '卡缪', rarity: '6', element: '狙击', isNew: true)]}),
      Version(name: '1.2「春晓时」', date: '2026-04', mainQuest: '春晓时', summary: '新章节开放', characters: [Character(name: '庄方宜', rarity: '6', element: '术师', isNew: true), Character(name: '逻各斯', rarity: '6', element: '术师'), Character(name: '阿', rarity: '6', element: '近卫')]),
      Version(name: '1.1「长夜终明」', date: '2026-03', mainQuest: '长夜终明', summary: '新章节开放', characters: [Character(name: '逻各斯', rarity: '6', element: '术师', isNew: true), Character(name: '阿', rarity: '6', element: '近卫', isNew: true), Character(name: '艾雅法拉', rarity: '6', element: '术师'), Character(name: '陈', rarity: '6', element: '近卫')]),
      Version(name: '1.0「启程」', date: '2026-01', mainQuest: '序章·应龙关', summary: '游戏公测', characters: [Character(name: '莱万汀', rarity: '6', element: '近卫', isNew: true), Character(name: '菲亚梅塔', rarity: '6', element: '术师', isNew: true), Character(name: '闪灵', rarity: '6', element: '医疗', isNew: true), Character(name: '能天使', rarity: '6', element: '狙击'), Character(name: '银灰', rarity: '6', element: '近卫'), Character(name: '塞雷娅', rarity: '6', element: '重装')]),
    ],
  );
}
