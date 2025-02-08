import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  Map<String, bool> expandedMonuments = {};
  Map<String, String> monumentDetails = {
    '1889': 'La Torre Eiffel fue construida como la entrada a la Exposición Universal de 1889 en París.',
    '1931': 'El Empire State Building fue el edificio más alto del mundo hasta 1970 y sigue siendo un ícono de Nueva York.',
    '2000': 'El London Eye es una de las ruedas de observación más altas del mundo, ofreciendo vistas espectaculares de Londres.',
    '2010': 'El Burj Khalifa en Dubái es actualmente el edificio más alto del mundo con 828 metros de altura.',
  };
  Map<String, String> monumentImages = {
    '1889': 'assets/eiffel_tower.png',
    '1931': 'assets/empire_state.png',
    '2000': 'assets/london_eye.png',
    '2010': 'assets/burj_khalifa.png',
  };

  void toggleMonument(String year) {
    setState(() {
      expandedMonuments[year] = !(expandedMonuments[year] ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.history, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'Historia y Evolucion',
              style: TextStyle(color: Colors.white, fontFamily: 'NotoSans'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF2F9D70),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
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
              'Conoce Nuestra Linea Del Tiempo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F9D70),
                fontFamily: 'NotoSans',
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.black26,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            _buildTimelineMonument('1889', 'Construcción de la Torre Eiffel.', true),
            _buildTimelineMonument('1931', 'Inauguración del Empire State Building.', true),
            _buildTimelineMonument('2000', 'Apertura del London Eye.', false),
            _buildTimelineMonument('2010', 'Finalización del Burj Khalifa.', false),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineMonument(String year, String monumentDescription, bool isCompleted) {
    bool isExpanded = expandedMonuments[year] ?? false;
    return GestureDetector(
      onTap: () => toggleMonument(year),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: isCompleted ? Color(0xFF2F9D70) : Colors.grey[300],
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF2F9D70), width: 2),
                    ),
                    child: isCompleted
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 16,
                          )
                        : null,
                  ),
                  Container(
                    height: 60,
                    width: 2,
                    color: Colors.grey[300],
                  ),
                ],
              ),
              SizedBox(width: 16),
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFE8F5E9),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        year,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2F9D70),
                          fontFamily: 'NotoSans',
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        monumentDescription,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontFamily: 'NotoSans',
                        ),
                      ),
                      if (isExpanded) ...[
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            monumentDetails[year] ?? 'No hay detalles adicionales disponibles.',
                            style: TextStyle(fontSize: 12, color: Colors.black54, fontFamily: 'NotoSans'),
                          ),
                        ),
                        SizedBox(height: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            monumentImages[year] ?? 'assets/placeholder.png',
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
