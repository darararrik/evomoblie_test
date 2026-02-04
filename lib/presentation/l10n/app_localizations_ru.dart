// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get moodDiaryTabTitle => 'Дневник настроения';

  @override
  String get statisticsTabTitle => 'Статистика';

  @override
  String get whatAreYouFeeling => 'Что чувствуешь?';

  @override
  String get stressLevel => 'Уровень стресса';

  @override
  String get selfEsteemLevel => 'Самооценка';

  @override
  String get save => 'Сохранить';

  @override
  String get low => 'Низкий';

  @override
  String get high => 'Высокий';

  @override
  String get uncertainty => 'Неуверенность';

  @override
  String get confidence => 'Уверенность';

  @override
  String get note => 'Заметка';

  @override
  String get addNote => 'Добавить заметку';

  @override
  String get addNoteHint => 'Введите заметку';

  @override
  String get today => 'Сегодня';
}
