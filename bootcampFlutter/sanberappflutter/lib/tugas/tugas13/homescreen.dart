import 'loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _signOut() async{
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context){
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null){
      print(auth.currentUser!.email);
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.extension)),
              ],
            ),
            const SizedBox(height: 37,),
            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: "welcome, \n",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: auth.currentUser!.email,
                    style: const TextStyle(color: Colors.blue),
                  )
                ]
                ),
                style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, size: 18,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
                hintText: "search"),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Recomended Place",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Container(
              child: ElevatedButton(
              onPressed: (){
                _signOut().then((value) => Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreen())));
              }, 
              child: const Text('Logout')
              ),)
          ],
        ), 
      ),
    );
  }
}

final countries = ["tokyo", "berlin", "roma", "monas"];