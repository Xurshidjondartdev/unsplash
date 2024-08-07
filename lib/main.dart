import 'package:flutter/material.dart';
import 'package:unsplash/my_app.dart';
import 'package:unsplash/setup.dart';
Future<void> main() async {
  await setup();
  runApp(const MyApp());
}
