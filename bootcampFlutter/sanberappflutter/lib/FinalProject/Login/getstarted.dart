import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/FinalProject/Login/login.dart';
import 'package:sanberappflutter/FinalProject/Login/regis.dart';
import 'package:sanberappflutter/FinalProject/Route/route_name.dart';

class GetStarted extends StatelessWidget {
  const GetStarted ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/img/LogoCatDog.png',
              height: 250,
              width: 250,
              ),
              SizedBox(
                height: 30,
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
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RegisScreen())
                    );
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())
                    );
                  },
                  child: Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}