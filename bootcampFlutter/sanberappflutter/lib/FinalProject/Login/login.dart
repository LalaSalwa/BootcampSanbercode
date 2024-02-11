import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sanberappflutter/FinalProject/Login/regis.dart';
import 'package:sanberappflutter/FinalProject/Route/route_name.dart';
import 'package:sanberappflutter/main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              MaterialPageRoute(builder: (context) =>  BottomNavbar())));
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
                    text: "Selamat Datang \nKemabali",
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
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Belum punya akun?",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RegisScreen())
                    );
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width:double.infinity,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 92, 184, 218),
                  border: Border.all(color: Color.fromARGB(255, 92, 184, 218),),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: (){
                    loginSubmit();
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ])));
  }
}
