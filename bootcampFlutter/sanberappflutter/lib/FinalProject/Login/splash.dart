import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/FinalProject/Login/getstarted.dart';
import 'package:sanberappflutter/FinalProject/Route/route_name.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen ({super.key});

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
              height: 300,
              width: 300,
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
                      MaterialPageRoute(builder: (context) => GetStarted())
                    );
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}