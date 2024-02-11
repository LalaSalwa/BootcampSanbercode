import 'package:flutter/material.dart';
import 'Homescreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "asset/img/logo.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "JobFinder",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color(0xff475BD8)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(hintText: "Email"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  }, 
                child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xfffffffff), fontWeight: FontWeight.w500,
                    ),
                )
              )
              // Container(
              //   height: 50,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: Color(0xff475BD8),
              //     border: Border.all(color: Color(0xff475BD8)),
              //     borderRadius: BorderRadius.circular(10)),
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, '/homescreen')ov;
              //     },
              //     child: const Text(
              //       "Login",
              //       style: TextStyle(
              //         color: Color(0xfffffffff), fontWeight: FontWeight.w500
              //       ),
              //     ),
              //   )
              // ),
            ],
          ),
        ),
      ),
    );
  }
}