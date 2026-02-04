import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:evomoblie_test/data/mood_local_datasource.dart';
import 'package:evomoblie_test/data/mood_repository.dart';
import 'package:evomoblie_test/domain/mood_repo.dart';
import 'package:evomoblie_test/presentation/routing/app_router.dart';
import 'package:evomoblie_test/presentation/theme/theme.dart';
import 'package:evomoblie_test/state/mood_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<IMoodRepository>(
      create: (context) => MoodRepository(MockDataSource()),
      child: BlocProvider(
        create: (context) => MoodDiaryCubit(context.read()),
        child: MaterialApp.router(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [Locale('ru')],
          routerConfig: appRouter.config(),
          theme: AppTheme.theme,
        ),
      ),
    );
  }
}
