import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.info, color: Colors.white), // Icono de información
            SizedBox(width: 8),
            Text(
              'Información',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.bold,
                color: Colors.white, // Texto en blanco
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF2F9D70),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Icono en blanco
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.asset(
              'assets/imagenes/imagen4.png', // Ruta de la imagen en tu carpeta assets
              fit: BoxFit.cover,
            ),
          ),
          // Fondo semitransparente para mejorar la legibilidad
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5), // Ajusta la opacidad según sea necesario
            ),
          ),
          // Contenido principal
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(Icons.location_on, 'UBICACIÓN', 'Se localiza al sur de Yucatán en el municipio de Maxcanú, a 74 km de la ciudad de Mérida. Pudes ir al menu en el modulo de ubicacion encontraras un mapa con indicaciones para llegar'),
                  _buildSection(Icons.directions_car, 'ACCESO', 'Por la carretera federal número 180, que conduce a la ciudad de Campeche, o por Villa de Maxcanú a la población de Calcetok.'),
                  _buildSection(Icons.access_time, 'HORARIO', 'Lunes a domingo de 08:00 a 17:00 hrs. Último acceso 16:00 hrs.'),
                  _buildSection(Icons.monetization_on, 'ENTRADA', '\$75.00 pesos'),
                  _buildSection(FontAwesomeIcons.ban, 'RESTRICCIONES', '- Prohibido fumar\n- Prohibido ingresar alimentos\n- Prohibido mascotas'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(IconData icon, String title, String content) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6), // Fondo semitransparente para cada sección
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 28),
              SizedBox(width: 10),
              Text(
                title,
                style: GoogleFonts.notoSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            content,
            style: GoogleFonts.notoSans(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
