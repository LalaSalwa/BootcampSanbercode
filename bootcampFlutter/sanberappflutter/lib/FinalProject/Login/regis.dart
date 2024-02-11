import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sanberappflutter/FinalProject/Login/login.dart';
import 'package:sanberappflutter/FinalProject/Route/route_name.dart';

class RegisScreen extends StatefulWidget {
  RegisScreen({super.key});

  @override
  State<RegisScreen> createState() => _RegisScreenState();
}

class _RegisScreenState extends State<RegisScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  registerSubmit() async{
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text.toString().trim(),
        password: _passwordController.text);
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  loginSubmit() async{
    try {
      _firebaseAuth
          .signInWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text)
            .then((value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) =>  LoginScreen())));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: ListView(children: <Widget>[
              Container(
                padding: EdgeInsetsDirectional.all(10),
                alignment: Alignment.topCenter,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'asset/img/LogoCatDog.png',
                          height: 150,
                          width: 150,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(children: <TextSpan>[
                  const TextSpan(
                    text: "Selamat Datang \nSilahkan Mendaftar",
                    style: TextStyle(color: Colors.black),
                  ),
                ]),
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Username",
                    style: TextStyle(),
                  )
                ],
              ),
              Container(
                  height: 50,
                  child: TextField(
                    controller: _emailController,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(),
                  )
                ],
              ),
              Container(
                  height: 50,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 11, 32, 133),
                  border: Border.all(color: Color.fromARGB(255, 11, 32, 133),),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: (){
                    registerSubmit();
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 92, 184, 218),
                  border: Border.all(color: Color.fromARGB(255, 11, 32, 133),),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ])));
  }
}

final ButtonStyle raisedButtonstyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.grey, backgroundColor: Colors.blue,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6))
  ),
);