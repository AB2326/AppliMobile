import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.accessibility),
            onPressed: () {
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Mon Profil'),
            ),
            ListTile(
              title: const Text('Catégorie 1'),
              onTap: () {
              },
            ),
            ListTile(
              title: const Text('Catégorie 2'),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Rechercher...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Rechercher'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Titre de l\'article 1'),
                  subtitle: const Text('Description de l\'article 1'),
                  trailing: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('View more'),
                  ),
                ),
                ListTile(
                  title: const Text('Titre de l\'article 2'),
                  subtitle: const Text('Description de l\'article 2'),
                  trailing: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text('View more'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
