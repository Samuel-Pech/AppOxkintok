import 'dart:io';
import 'package:app_oxkintok/pages/data_curiosities.dart';
import 'package:app_oxkintok/pages/information.dart';
import 'package:app_oxkintok/pages/languages.dart';
import 'package:app_oxkintok/pages/map.dart';
import 'package:app_oxkintok/pages/recommendations.dart';
import 'package:app_oxkintok/pages/scanner.dart';
import 'package:app_oxkintok/pages/security_emergency.dart';
import 'package:app_oxkintok/pages/timeline.dart';
import 'package:app_oxkintok/pages/tourism_guide.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app_oxkintok/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  final Function(String) onLanguageChange;

  const HomeScreen({required this.onLanguageChange, super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String animatedText1 = "";
  String animatedText2 = "";
  String fullText1 = "";
  String fullText2 = "";
  int charIndex1 = 0;
  int charIndex2 = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    String newFullText1 = S.of(context)!.animatedText1!;
    String newFullText2 = S.of(context)!.animatedText2!;

    if (fullText1 != newFullText1) {
      fullText1 = newFullText1;
      animatedText1 = "";
      charIndex1 = 0;
      _startTextAnimation1();
    }

    if (fullText2 != newFullText2) {
      fullText2 = newFullText2;
      animatedText2 = "";
      charIndex2 = 0;
      _startTextAnimation2();
    }
  }

  void _startTextAnimation1() {
    Future.delayed(Duration(milliseconds: 50), () {
      if (charIndex1 < fullText1.length) {
        setState(() {
          animatedText1 += fullText1[charIndex1];
          charIndex1++;
        });
        _startTextAnimation1();
      }
    });
  }

  void _startTextAnimation2() {
    Future.delayed(Duration(milliseconds: 50), () {
      if (charIndex2 < fullText2.length) {
        setState(() {
          animatedText2 += fullText2[charIndex2];
          charIndex2++;
        });
        _startTextAnimation2();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Oxkintok',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        backgroundColor: Color(0xFF2F9D70),
        elevation: 5,
      ),
      drawer: _buildCustomDrawer(context),
      body: Column(
        children: [
          HomeHeader(),
          SizedBox(height: 20),
          ImageCarousel(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  animatedText1,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  animatedText2,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InformationPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2F9D70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(Icons.info_outline, color: Colors.white),
                  label: Text(S.of(context)!.moreInfo,
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF2F9D70),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 90),
            _buildMenuItem(
              icon: Icons.home,
              title: S.of(context)!.home,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      onLanguageChange: widget.onLanguageChange,
                    ),
                  ),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.location_on,
              title: S.of(context)!.guide,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TourismGuidePage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.map,
              title: S.of(context).map,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.qr_code_scanner,
              title: S.of(context)!.scanner,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScannerPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.book,
              title: S.of(context)!.dataAndCuriosities,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DataCuriositiesPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.history,
              title: S.of(context)!.historyAndEvolution,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TimelinePage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.calendar_today,
              title: S.of(context)!.Recommendations,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RecommendationsPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.call,
              title: S.of(context)!.securityAndEmergency,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecurityEmergencyPage()),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.language,
              title: S.of(context)!.languages,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LanguageScreen(
                      onLanguageChange: widget.onLanguageChange,
                    ),
                  ),
                );
              },
            ),
            _buildMenuItem(
              icon: Icons.exit_to_app,
              title: S.of(context)!.exit,
              onTap: () {
                _showExitConfirmation(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(title, style: TextStyle(color: Colors.white)),
          onTap: onTap,
        ),
        Divider(color: Colors.white, thickness: 0.5, indent: 16, endIndent: 16),
      ],
    );
  }

  void _showExitConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          S.of(context)!.exit,
        ),
        content: Text(
          S.of(context)!.confirmExit,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              S.of(context)!.cancel,
            ),
          ),
          TextButton(
            onPressed: () => exit(0),
            child: Text(
              S.of(context)!.accept,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.easeInOut,
        viewportFraction: 0.9,
      ),
      items: [
        'assets/imagenes/imagen1.png',
        'assets/imagenes/imagen2.png',
        'assets/imagenes/imagen3.png'
      ].map((imagePath) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        );
      }).toList(),
    );
  }
}

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Oxkintok',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
