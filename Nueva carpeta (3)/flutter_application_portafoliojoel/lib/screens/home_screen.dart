import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
          Card(
            color: Colors.black,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Center(
                    child: Text(
                      'Bienvenido a mi Portafolio',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Card(
            elevation: 3,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            margin: const EdgeInsets.only(bottom: 30),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  // Avatar o Logo
                  CircleAvatar(
                    radius: 50,
                    // Usamos NetworkImage para URLs de internet
                    backgroundImage: const AssetImage(
                      'assets/Imagen de WhatsApp 2025-11-18 a las 18.02.42_bc1c2e7c.jpg',
                    ),
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.primaryContainer,
                  ),
                  const SizedBox(height: 20),
                  // Nombre del Desarrollador
                  const Text(
                    'Joel Caraballo (Joelcho)',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                    ),
                  ),
                  const SizedBox(height: 5),
                  // Rol/Título
                  Text(
                    'Estudiante de Ingeniería de Sistemas',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Acerca de mi',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen,
                    ),
                  ),

                  Text(
                    'Soy un estudiante de 19 años apasionado por la ingenieria y futbol, me gusta aprender sobre nuevas tecnologias y como estas pueden ayudar a mejorar la vida de las personas. En mi tiempo libre disfruto jugar videojuegos, ver peliculas, y practicar deportes al aire libre.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),

                  Text(
                    'Entre los lenguajes de programacion que eh visto se encuentran: Python, Java, C#, y Dart. Actualmente estoy enfocado en el desarrollo de paginas web y aplicaciones moviles utilizando Flutter.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),

          Text(
            'Hobies',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),
          ),
          const SizedBox(height: 20),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('- Jugar Futbol', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('- Ver Peliculas', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('- Programar', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('- Salir con amigos', style: TextStyle(fontSize: 16)),
                  Text(
                    '- echarle vaina a Ginosaurio',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: const AssetImage(
                  'assets/Imagen de WhatsApp 2025-11-18 a las 18.08.56_6c210b70.jpg',
                ),
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              ),
              title: const Text(
                'Equipo Universidad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              subtitle: const Text('Santa Cereza FC'),
            ),
          ),

          Text(
            'Hobies',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen,
            ),
          ),
          const SizedBox(height: 20),

          Card(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Colors.green, width: 1),
            ),
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/maxresdefault.jpg'),
              ),
              title: const Text(
                'Albion Online',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreen,
                ),
              ),
              subtitle: const Text('Juego de aventura y supervivencia'),
              trailing: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Albion Online',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                        ),
                      ),
                      content: const Text(
                        'Albion Online es un MMORPG sandbox que se desarrolla en un mundo medieval fantástico. Los jugadores pueden explorar, recolectar recursos, fabricar objetos, comerciar y participar en combates PvP y PvE. El juego se destaca por su economía impulsada por los jugadores y su sistema de clases basado en el equipo que usan.',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Cerrar'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Ver más'),
              ),
            ),
          ),

          Card(
            color: Colors.black,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                // GitHub
                ListTile(
                  leading: const Icon(
                    Icons.contact_mail,
                    color: Colors.orangeAccent,
                  ),
                  title: const Text(
                    'Contacto',
                    style: TextStyle(color: Colors.orangeAccent),
                  ),

                  trailing: const Icon(Icons.open_in_new),
                  onTap: () => Navigator.pushNamed(context, '/contacto'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Text(
            'Versión de la App: 3.3.0',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
