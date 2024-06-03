// // **exemple 1***
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final List<String> languages = ["LANGAGE JAVA", "LANGAGE KOTLIN", "LANGAGE DART", "LANGAGE SWIFT"];
    
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //           title: const Text('Flutter Demo Home Page'),
// //         ),
// //         body: ListView.builder(
// //           padding: const EdgeInsets.all(8),
// //           itemCount: languages.length,
// //           itemBuilder: (context, index) {
// //             return Container(
// //               height: 50,
// //               color: Colors.amber[600 - (index * 100)],
// //               child: Center(child: Text(languages[index])),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }
// // exemple 2 ********
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: DaysScreen(),
//     );
//   }
// }

// class DaysScreen extends StatelessWidget {
//   final List<String> jours = [
//     "Dimanche",
//     "Lundi",
//     "Mardi",
//     "Mercredi",
//     "Jeudi",
//     "Vendredi",
//     "Samedi"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("M208_TP6"),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(8),
//         itemCount: jours.length,
//         itemBuilder: (context, index) {
//           return Container(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               jours[index],
//               style: const TextStyle(fontSize: 30),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// //exemple 4 ******
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MaListView(),
    );
  }
}

class MaListView extends StatelessWidget {
  final List<String> jours = [
    "Dimanche",
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("M208_TP6"),
      ),
      body: ListView.separated(
        itemCount: jours.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              jours[index],
              style: const TextStyle(fontSize: 30),
            ),
            subtitle: Text('Tâches à faire le ' + jours[index]),
            leading: CircleAvatar(
              child: Text(
                jours[index][0], // Prend le premier caractère de chaque jour
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.orange,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
                return Container(
                  color: Colors.orange,
                    child: Icon(
                    Icons.add_a_photo,
                    )); },
 ),
    );
  }
}