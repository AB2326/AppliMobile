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
              // Action à effectuer lorsque l'icône d'accessibilité est cliquée
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
                // Action à effectuer lorsque la catégorie 1 est cliquée
              },
            ),
            ListTile(
              title: const Text('Catégorie 2'),
              onTap: () {
                // Action à effectuer lorsque la catégorie 2 est cliquée
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
                    // Action à effectuer lorsque le bouton de recherche est cliqué
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
                      // Action à effectuer lorsque le bouton "View more" de l'article 1 est cliqué
                    },
                    child: const Text('View more'),
                  ),
                ),
                ListTile(
                  title: const Text('Titre de l\'article 2'),
                  subtitle: const Text('Description de l\'article 2'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsque le bouton "View more" de l'article 2 est cliqué
                    },
                    child: const Text('View more'),
                  ),
                ),
                // Ajoutez d'autres articles ici...
              ],
            ),
          ),
        ],
      ),
    );
  }
}
