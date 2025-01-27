import 'package:flutter/material.dart';

class PlanVisitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan de Visita'),
        backgroundColor: Color(0xFF2F9D70),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Tu Plan de Visita',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              '1. Mañana: Visitar el Museo de Historia Natural.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. Tarde: Almorzar en el restaurante "La Casa del Mar".',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. Noche: Disfrutar de la vista desde el mirador del parque.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '4. Visita a las playas cercanas al atardecer.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '5. Cena en el restaurante local "Sabor de la Tierra".',
              style: TextStyle(fontSize: 16),
            ),
            // Puedes agregar más actividades o lugares para visitar aquí.
          ],
        ),
      ),
    );
  }
}
