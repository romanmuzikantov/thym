import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:thym/providers/timers_box_provider.dart';
import 'package:thym/src/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Directory directory = await getApplicationDocumentsDirectory();

  final hiveCollection = await BoxCollection.open(
    'ThymCollection',
    {'timers'},
    path: directory.path,
  );

  final timersBox = await hiveCollection.openBox('timers');

  runApp(ProviderScope(
    overrides: [
      timersBoxProvider.overrideWithValue(timersBox),
    ],
    child: const MyApp(),
  ));
}
