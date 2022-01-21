import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_awesome_widgets/my_awesome_widgets.dart';

void main() {
  runApp(const MyAwesomeApp());
}

class MyAwesomeApp extends StatelessWidget {
  const MyAwesomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        // Add the localization delegate of your package
        MyAwesomeWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('hu'),
      ],
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CoolTexts(),
        ),
      ),
    );
  }
}
