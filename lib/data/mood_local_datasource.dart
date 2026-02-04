import 'package:evomoblie_test/domain/mood.dart';
import 'package:evomoblie_test/presentation/constants/icons.dart';

class MockDataSource {
  List<Mood> getMoods() {
    return const [
      Mood(
        id: 1,
        name: 'Радость',
        iconPath: AppIcons.joy,
        subEmotions: [
          'Возбуждение',
          'Восторг',
          'Игривость',
          'Наслаждение',
          'Очарование',
          'Осознанность',
          'Смелость',
          'Удовольствие',
          'Чувственность',
          'Энергичность',
          'Экстравагантность',
        ],
      ),
      Mood(
        id: 2,
        name: 'Страх',
        iconPath: AppIcons.fear,
        subEmotions: [
          'Тревога',
          'Беспокойство',
          'Паника',
          'Ужас',
          'Опасение',
          'Нервозность',
        ],
      ),
      Mood(
        id: 3,
        name: 'Бешенство',
        iconPath: AppIcons.rage,
        subEmotions: ['Ярость', 'Гнев', 'Раздражение', 'Негодование', 'Злость'],
      ),
      Mood(
        id: 4,
        name: 'Грусть',
        iconPath: AppIcons.sadness,
        subEmotions: ['Печаль', 'Тоска', 'Уныние', 'Скорбь', 'Одиночество'],
      ),
      Mood(
        id: 5,
        name: 'Спокойствие',
        iconPath: AppIcons.calm,
        subEmotions: [
          'Умиротворение',
          'Расслабленность',
          'Безмятежность',
          'Гармония',
        ],
      ),
      Mood(
        id: 6,
        name: 'Сила',
        iconPath: AppIcons.strength,
        subEmotions: ['Уверенность', 'Решительность', 'Мощь', 'Стойкость'],
      ),
    ];
  }
}
