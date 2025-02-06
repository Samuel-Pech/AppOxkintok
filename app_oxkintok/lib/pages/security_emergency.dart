import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:app_oxkintok/generated/l10n.dart'; // Importa la generación de locales

class SecurityEmergencyPage extends StatelessWidget {
  // Función para realizar llamadas
  void _makeCall(String phoneNumber) async {
    final Uri callUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      throw 'No se pudo iniciar la llamada a $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.call, color: Colors.white),
            SizedBox(width: 10),
            Text(
              S
                  .of(context)
                  .securityAndEmergency, // Traducción para Seguridad y Emergencia
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF2F9D70),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
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
              S
                  .of(context)
                  .emergencyContacts, // Traducción para "Contactos de Emergencia"
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildEmergencyContact(
              icon: Icons.local_fire_department,
              label: S.of(context).firefighters, // Traducción para "Bomberos"
              phoneNumber: '911',
            ),
            _buildEmergencyContact(
              icon: Icons.local_police,
              label: S.of(context).police, // Traducción para "Policía"
              phoneNumber: '911',
            ),
            _buildEmergencyContact(
              icon: Icons.local_hospital,
              label: S
                  .of(context)
                  .medicalServices, // Traducción para "Servicios Médicos"
              phoneNumber: '911',
            ),
            SizedBox(height: 20),
            Text(
              S
                  .of(context)
                  .securityProtocols, // Traducción para "Protocolos de Seguridad"
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildProtocolItem(S
                .of(context)
                .fireProtocol), // Traducción para "En caso de incendio"
            _buildProtocolItem(S
                .of(context)
                .safeAreasProtocol), // Traducción para "Diríjase a áreas seguras"
            _buildProtocolItem(S
                .of(context)
                .reportEmergency), // Traducción para "Reporte cualquier emergencia"
            SizedBox(height: 20),
            Text(
              S
                  .of(context)
                  .safeAreasAndFirstAid, // Traducción para "Áreas Seguras y Primeros Auxilios"
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(
                  child: Text(S
                      .of(context)
                      .interactiveMap)), // Traducción para "Mapa interactivo"
            ),
            SizedBox(height: 20),
            Text(
              S
                  .of(context)
                  .practicalTips, // Traducción para "Consejos prácticos"
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildTip(S
                .of(context)
                .stayHydrated), // Traducción para "Mantente hidratado"
            _buildTip(S
                .of(context)
                .useSunscreen), // Traducción para "Usa protector solar"
            _buildTip(S
                .of(context)
                .walkCarefully), // Traducción para "Camina con precaución"
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyContact(
      {required IconData icon,
      required String label,
      required String phoneNumber}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF2F9D70)),
      title: Text(label),
      trailing: IconButton(
        icon: const Icon(Icons.phone, color: Colors.blue),
        onPressed: () => _makeCall(phoneNumber),
      ),
    );
  }

  Widget _buildProtocolItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: Colors.green, size: 20),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  Widget _buildTip(String tip) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const Icon(Icons.lightbulb, color: Colors.orange),
          const SizedBox(width: 10),
          Expanded(child: Text(tip)),
        ],
      ),
    );
  }
}
