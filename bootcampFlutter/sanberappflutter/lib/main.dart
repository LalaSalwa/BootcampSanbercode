import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sanberappflutter/tugas/tugas14/get_data_scree.dart';
// import 'package:sanberappflutter/tugas/tugas12/get_data.dart';
// import 'package:sanberappflutter/tugas/tugas12/get_detail_screen.dart';
// import 'package:sanberappflutter/tugas/tugas11/Homescreen.dart';
// import 'package:sanberappflutter/tugas/tugas11/login.dart';
// import 'tugas/tugas10/login.dart';

// void main() {
//   runApp(const MyApp(
//   ));
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: GetDataScreen(),
//     //   routes: <String, WidgetBuilder>{
//     //   '/login': (context) => LoginScreen(),
//     //   '/home': (context) => HomeScreen(),
//     // },
//     );
//   }
// }

// Future<void> main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginScreen(),
//     );
//   }
// }

void main() {
  runApp(const MyApp(
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetDataScreenStateManagament() ,
    //   routes: <String, WidgetBuilder>{
    //   '/login': (context) => LoginScreen(),
    //   '/home': (context) => HomeScreen(),
    // },
    );
  }
}