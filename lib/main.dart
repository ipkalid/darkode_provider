import 'package:darkode_provider/provider/theme_notifier.dart';
import 'package:darkode_provider/screens/first_screen.dart';
import 'package:darkode_provider/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeNotifer(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: context.watch<ThemeNotifer>().getTheme()
          ? Apptheme.darkTheme
          : Apptheme.lightTheme,
      home: FirstScreen(),
    );
  }
}
