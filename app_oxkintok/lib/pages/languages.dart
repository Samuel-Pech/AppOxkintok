import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_oxkintok/generated/l10n.dart';

class LanguageScreen extends StatefulWidget {
  final Function(String) onLanguageChange;

  const LanguageScreen({required this.onLanguageChange, super.key});

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _selectedLanguage = 'es';
  bool _isLoading = true;

  final List<Map<String, String>> _languages = [
    {'name': 'Español', 'code': 'es'},
    {'name': 'English', 'code': 'en'},
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
      _isLoading = false;
    });
  }

  Future<void> _saveLanguagePreference(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
  }

  void _updateLanguage(String language) {
    final languageName =
        _languages.firstWhere((lang) => lang['code'] == language)['name'];
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context)!.confirmLanguageChange),
          content: Text(
              '${S.of(context)!.confirmLanguageChangeMessage} $languageName?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(S.of(context)!.cancel),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _selectedLanguage = language;
                });
                _saveLanguagePreference(language);
                widget.onLanguageChange(language);
              },
              child: Text(S.of(context)!.accept),
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
        title: Text(S.of(context)!.languageSettings),
        backgroundColor: Color(0xFF2F9D70),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context)!.selectLanguage,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 24),
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
      elevation: 6,
      margin: EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: RadioListTile<String>(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color:
                _selectedLanguage == value ? Color(0xFF2F9D70) : Colors.black,
          ),
        ),
        value: value,
        groupValue: _selectedLanguage,
        onChanged: (value) {
          if (value != null) {
            _updateLanguage(value);
          }
        },
        activeColor: Color(0xFF2F9D70),
      ),
    );
  }
}
