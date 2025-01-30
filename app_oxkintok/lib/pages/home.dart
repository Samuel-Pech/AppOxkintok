import 'dart:io';
import 'package:app_oxkintok/pages/data_curiosities.dart';
import 'package:app_oxkintok/pages/information.dart';
import 'package:app_oxkintok/pages/languages.dart';
import 'package:app_oxkintok/pages/map.dart';
import 'package:app_oxkintok/pages/plan_visit.dart';
import 'package:app_oxkintok/pages/scanner.dart';
import 'package:app_oxkintok/pages/security_emergency.dart';
import 'package:app_oxkintok/pages/timeline.dart';
import 'package:app_oxkintok/pages/tourism_guide.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String animatedText1 = "";
  String animatedText2 = "";
  final String fullText1 =
      'Descubre las maravillas de Oxkintok, un sitio arqueológico lleno de historia y cultura.';
  final String fullText2 =
      'Oxkintok es considerado uno de los asentamientos más importantes del norte de Yucatán y, quizás, la ciudad más antigua de la región Puuc central. Su posición le permitió controlar el flujo de bienes comerciales procedentes del sur de la península y conectarse con otras culturas contemporáneas. Su cronología principal es Preclásico Superior y se extiende hasta el Posclásico Temprano, del 300 a. C., a aproximadamente 1200 d. C.';
  int charIndex1 = 0;
  int charIndex2 = 0;

  @override
  void initState() {
    super.initState();
    _startTextAnimation1();
  }

  void _startTextAnimation1() {
    Future.delayed(Duration(milliseconds: 50), () {
      if (charIndex1 < fullText1.length) {
        setState(() {
          animatedText1 += fullText1[charIndex1];
          charIndex1++;
        });
        _startTextAnimation1();
      } else {
        _startTextAnimation2();
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
        title: Row(
          children: [
            Icon(Icons.home, color: Colors.white), // Ícono al lado de "Inicio"
            SizedBox(width: 8), // Espacio entre el ícono y el texto
            Text(
              'Inicio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: Colors.white, // Texto blanco
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF2F9D70),
        elevation: 5,
        iconTheme: IconThemeData(
          color: Colors.white, // Cambiar el color del ícono del menú de hamburguesa
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF2F9D70),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 90,
              ),
              _buildMenuItem(
                icon: Icons.home,
                title: 'Inicio',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              _buildMenuItem(
                icon: Icons.location_on,
                title: 'Ubicacion',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TourismGuidePage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.map,
                title: 'Guia',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapPage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.qr_code_scanner,
                title: 'Escáner',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScannerPage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.book,
                title: 'Datos y Curiosidades',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DataCuriositiesPage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.history,
                title: 'Historial y Evolución',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimelinePage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.calendar_today,
                title: 'Planificar visita',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PlanVisitPage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.call,
                title: 'Seguridad y Emergencia',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecurityEmergencyPage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.language,
                title: 'Idiomas',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageScreen()));
                },
              ),
              _buildMenuItem(
                icon: Icons.exit_to_app,
                title: 'Salir',
                onTap: () {
                  _showExitConfirmation(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Oxkintok',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade800,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 200,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.easeInOut,
                viewportFraction: 0.8,
              ),
              items: [
                'assets/imagenes/imagen1.png',
                'assets/imagenes/imagen2.png',
                'assets/imagenes/imagen3.png'
              ].map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              animatedText1,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              animatedText2,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InformationPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF2F9D70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Más Información',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      {required IconData icon, required String title, required VoidCallback onTap}) {
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
      builder: (context) {
        return AlertDialog(
          title: Text('Salir de la aplicación'),
          content: Text('¿Estás seguro de que deseas salir?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                exit(0);
              },
              child: Text('Salir'),
            ),
          ],
        );
      },
    );
  }
}
