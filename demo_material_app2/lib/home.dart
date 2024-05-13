import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
        actions: [
          IconButton(
            icon: Icon(Icons.accessibility),
            onPressed: () {
              // Action à effectuer lorsque l'icône d'accessibilité est cliquée
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Mon Profil'),
            ),
            ListTile(
              title: Text('Catégorie 1'),
              onTap: () {
                // Action à effectuer lorsque la catégorie 1 est cliquée
              },
            ),
            ListTile(
              title: Text('Catégorie 2'),
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
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Rechercher...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Action à effectuer lorsque le bouton de recherche est cliqué
                  },
                  child: Text('Rechercher'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Titre de l\'article 1'),
                  subtitle: Text('Description de l\'article 1'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsque le bouton "View more" de l'article 1 est cliqué
                    },
                    child: Text('View more'),
                  ),
                ),
                ListTile(
                  title: Text('Titre de l\'article 2'),
                  subtitle: Text('Description de l\'article 2'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lorsque le bouton "View more" de l'article 2 est cliqué
                    },
                    child: Text('View more'),
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
