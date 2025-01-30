import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: const Row(
          children: [
            Icon(Icons.call, color: Colors.white),
            SizedBox(width: 10),
            Text(
              'Seguridad y Emergencia',
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
            const Text(
              'Contactos de Emergencias:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildEmergencyContact(
              icon: Icons.local_fire_department,
              label: 'Bomberos',
              phoneNumber: '911',
            ),
            _buildEmergencyContact(
              icon: Icons.local_police,
              label: 'Policía',
              phoneNumber: '911',
            ),
            _buildEmergencyContact(
              icon: Icons.local_hospital,
              label: 'Servicios Médicos',
              phoneNumber: '911',
            ),
            const SizedBox(height: 20),
            const Text(
              'Protocolos de Seguridad:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildProtocolItem('En caso de incendio, siga las rutas de evacuación.'),
            _buildProtocolItem('Diríjase a las áreas seguras marcadas en el mapa.'),
            _buildProtocolItem('Reporte cualquier emergencia al personal.'),
            const SizedBox(height: 20),
            const Text(
              'Áreas Seguras y Primeros Auxilios:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(child: Text('Mapa interactivo aquí')),
            ),
            const SizedBox(height: 20),
            const Text(
              'Consejos Prácticos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildTip('Mantente hidratado, lleva una botella de agua.'),
            _buildTip('Usa protector solar para evitar quemaduras.'),
            _buildTip('Camina con precaución por terrenos irregulares.'),
          ],
        ),
      ),
    );
  }

  Widget _buildEmergencyContact({required IconData icon, required String label, required String phoneNumber}) {
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
