import 'package:flutter/material.dart';
import 'jour.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jours de la Semaine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Jour> jours = [
    Jour(intitule: 'Lundi', description: 'Travail sur le projet Flutter.'),
    Jour(intitule: 'Mardi', description: 'Réunion avec l\'équipe.'),
    Jour(intitule: 'Mercredi', description: 'Cours de yoga.'),
    Jour(intitule: 'Jeudi', description: 'Travail à distance.'),
    Jour(intitule: 'Vendredi', description: 'Préparation du week-end.'),
    Jour(intitule: 'Samedi', description: 'Sortie avec les amis.'),
    Jour(intitule: 'Dimanche', description: 'Repos et détente.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jours de la Semaine'),
      ),
      body: ListView.builder(
        itemCount: jours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(jours[index].intitule),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(jour: jours[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Jour jour;

  DetailPage({required this.jour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jour.intitule),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(jour.description),
      ),
    );
  }
}
