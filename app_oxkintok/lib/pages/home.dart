import 'dart:io';
import 'package:app_oxkintok/pages/data_curiosities.dart';
import 'package:app_oxkintok/pages/languages.dart';
import 'package:app_oxkintok/pages/map.dart';
import 'package:app_oxkintok/pages/plan_visit.dart';
import 'package:app_oxkintok/pages/scanner.dart';
import 'package:app_oxkintok/pages/security_emergency.dart';
import 'package:app_oxkintok/pages/timeline.dart';
import 'package:app_oxkintok/pages/tourism_guide.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
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
                title: 'Guia',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TourismGuidePage()));
                },
              ),
              _buildMenuItem(
                icon: Icons.map,
                title: 'Mapa',
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
            height: 150,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.easeInOut,
                viewportFraction: 0.9,
              ),
              items: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '300 x 150',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '300 x 150',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      '300 x 150',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
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
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
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
                exit(0); // Cerrar la app
              },
              child: Text('Salir'),
            ),
          ],
        );
      },
    );
  }
}
