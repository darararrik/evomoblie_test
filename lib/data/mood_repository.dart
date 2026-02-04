import 'package:evomoblie_test/data/mood_local_datasource.dart';
import 'package:evomoblie_test/domain/mood.dart';
import 'package:evomoblie_test/domain/mood_repo.dart';

class MoodRepository implements IMoodRepository {
  final MockDataSource _dataSource;

  MoodRepository(this._dataSource);

  @override
  List<Mood> getMoods() {
    return _dataSource.getMoods();
  }
}
