import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageScreen extends StatefulWidget {
  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'es';

  final List<Map<String, String>> _languages = [
    {'name': 'Español', 'code': 'es'},
    {'name': 'English', 'code': 'en'},
    {'name': 'Maya', 'code': 'maya'},
    {'name': 'Français', 'code': 'fr'},
    {'name': 'Deutsch', 'code': 'de'},
    {'name': 'Italiano', 'code': 'it'},
    {'name': 'Português', 'code': 'pt'},
    {'name': 'Nederlands', 'code': 'nl'},
    {'name': 'Русский', 'code': 'ru'},
    {'name': '中文', 'code': 'zh'},
    {'name': '日本語', 'code': 'ja'},
    {'name': '한국어', 'code': 'ko'},
    {'name': 'العربية', 'code': 'ar'},
    {'name': 'हिन्दी', 'code': 'hi'},
    {'name': 'বাংলা', 'code': 'bn'},
    {'name': 'Türkçe', 'code': 'tr'},
    {'name': 'Tiếng Việt', 'code': 'vi'},
    {'name': 'Polski', 'code': 'pl'},
    {'name': 'ไทย', 'code': 'th'},
    {'name': 'Magyar', 'code': 'hu'},
  ];

  @override
  void initState() {
    super.initState();
    _loadLanguagePreference();
  }

  Future<void> _loadLanguagePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedLanguage = prefs.getString('language') ?? 'es';
    });
  }

  Future<void> _saveLanguagePreference(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
  }

  void _updateLanguage(String language) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmar Cambio de Idioma'),
          content: Text('¿Estás seguro de cambiar el idioma a $language?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _selectedLanguage = language;
                });
                _saveLanguagePreference(language);
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración de Idioma'),
        backgroundColor: Color(0xFF2F9D70),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selecciona el idioma:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ..._languages.map((language) =>
                  _buildRadioTile(language['name']!, language['code']!)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRadioTile(String title, String value) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: RadioListTile<String>(
        title: Text(title),
        value: value,
        groupValue: _selectedLanguage,
        onChanged: (value) {
          if (value != null) {
            _updateLanguage(value);
          }
        },
      ),
    );
  }
}

class LanguageManager {
  static final LanguageManager _instance = LanguageManager._internal();

  factory LanguageManager() {
    return _instance;
  }

  LanguageManager._internal();

  String _currentLanguage = 'es';

  String get currentLanguage => _currentLanguage;

  Future<void> loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _currentLanguage = prefs.getString('language') ?? 'es';
  }

  void setLanguage(String language) {
    _currentLanguage = language;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LanguageManager().loadLanguage();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oxkintok',
      locale: Locale(LanguageManager().currentLanguage),
      supportedLocales: [
        Locale('en', ''),
        Locale('es', ''),
        Locale('maya', ''),
        Locale('fr', ''),
        Locale('de', ''),
        Locale('it', ''),
        Locale('pt', ''),
        Locale('nl', ''),
        Locale('ru', ''),
        Locale('zh', ''),
        Locale('ja', ''),
        Locale('ko', ''),
        Locale('ar', ''),
        Locale('hi', ''),
        Locale('bn', ''),
        Locale('tr', ''),
        Locale('vi', ''),
        Locale('pl', ''),
        Locale('th', ''),
        Locale('hu', ''),
      ],
      localizationsDelegates: [],
      home: LanguageScreen(),
    );
  }
}
