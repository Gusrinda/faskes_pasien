import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'src/app.dart';
import 'src/core/repository/push_notification_repository.dart';
import 'src/presentation/views/settings/settings_controller.dart';
import 'src/presentation/views/settings/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  // init localizations
  Intl.defaultLocale = 'id_ID';
  // await initializeDateFormatting(Intl.defaultLocale);

  // setup hydrated bloc storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // initialize API service
  final dio = Dio()
    ..transformer = FlutterTransformer()
    ..options.validateStatus = (int? status) {
      if (status == null) return false;
      return true; //(status >= 200 && status < 300) || (status >= 400 && status < 500);
    };
  if (kDebugMode) {
    final logger = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 180,
    );
    dio.interceptors.add(logger);
  }
  final apiService = ApiService(dio);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: settingsController),
      RepositoryProvider(create: (context) => PushNotificationRepository()),
    ],
    child: MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(
          create: (context) => UserRepositoryImpl(apiService),
        ),
        RepositoryProvider<PersonalDataRepository>(
          create: (context) => PersonalDataRepositoryImpl(apiService),
        ),
        RepositoryProvider<AdministrativeRepository>(
          create: (context) => AdministrativeRepositoryImpl(apiService),
        ),
        RepositoryProvider<FileRepository>(
          create: (context) => FileRepositoryImpl(apiService),
        ),
      ],
      child: const MyApp(),
    ),
  ));
}
