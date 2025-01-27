import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Línea de Tiempo'),
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
              'Línea de Tiempo de Eventos Importantes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildTimelineEvent(
              '2023',
              'Lanzamiento de la nueva aplicación.',
              Icons.launch,
            ),
            _buildTimelineEvent(
              '2024',
              'Actualización importante del sistema.',
              Icons.update,
            ),
            _buildTimelineEvent(
              '2025',
              'Expansión internacional de la empresa.',
              Icons.language,
            ),
            _buildTimelineEvent(
              '2026',
              'Meta de sostenibilidad alcanzada.',
              Icons.eco,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineEvent(
      String year, String eventDescription, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xFF2F9D70),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                year,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                eventDescription,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
