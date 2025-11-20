import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Contacto')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black87],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.green.shade700.withOpacity(0.6),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: const AssetImage(
                      'assets/Imagen de WhatsApp 2025-11-18 a las 18.02.42_bc1c2e7c.jpg',
                    ),
                    backgroundColor: theme.colorScheme.primaryContainer,
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Joel Caraballo (Joelcho)',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Estudiante de Ingeniería de Sistemas',
                    style: TextStyle(
                      fontSize: 14,
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Iconos de acción (solo iconos, sin botones elevados)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        tooltip: 'Enviar email',
                        icon: const Icon(
                          Icons.email,
                          color: Colors.lightGreen,
                          size: 28,
                        ),
                        onPressed: () => _showMessage(
                          context,
                          'Abrir app de correo (Gmail)',
                        ),
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        tooltip: 'Llamar',
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.lightGreen,
                          size: 28,
                        ),
                        onPressed: () =>
                            _showMessage(context, 'Llamar al número (tel:)'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.black,
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email, color: Colors.lightGreen),
                    title: const Text(
                      'joel@example.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.copy, color: Colors.white70),
                      onPressed: () => _showMessage(
                        context,
                        'Email copiado al portapapeles',
                      ),
                    ),
                  ),
                  const Divider(color: Colors.white10, height: 1),
                  ListTile(
                    leading: const Icon(Icons.phone, color: Colors.lightGreen),
                    title: const Text(
                      '+58 412-1387718',
                      style: TextStyle(color: Colors.white),
                    ),
                    // Mostrar solo el ícono de llamada (no como botón)
                    trailing: const Icon(Icons.call, color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.link, color: Colors.lightGreen),
                  onPressed: () => _showMessage(context, 'Abrir LinkedIn'),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.web, color: Colors.lightGreen),
                  onPressed: () => _showMessage(context, 'Abrir portfolio web'),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Text(
              'También puedes enviarme un mensaje por email o revisar mi perfil profesional.',
              textAlign: TextAlign.center,
              style: TextStyle(color: theme.colorScheme.outline),
            ),
          ],
        ),
      ),
    );
  }
}
