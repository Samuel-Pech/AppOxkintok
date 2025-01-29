import 'package:app_oxkintok/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:app_oxkintok/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String languageCode = await _getSavedLanguage();
  runApp(MyApp(languageCode));
}

Future<String> _getSavedLanguage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('language') ?? 'es';
}

class MyApp extends StatefulWidget {
  final String initialLanguage;

  const MyApp(this.initialLanguage, {super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String _languageCode;

  @override
  void initState() {
    super.initState();
    _languageCode = widget.initialLanguage;
  }

  void changeLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
    setState(() {
      _languageCode = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oxkintok',
      locale: Locale(_languageCode),
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
      ],
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      home: HomeScreen(onLanguageChange: changeLanguage),
    );
  }
}
