import 'package:flutter/material.dart';
import 'drawerscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("home screen"),),
      drawer: const DrawerScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Your JObs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 40),
          color: Colors.white,
          child: ListView(

            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "let's Find",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Your Dream Jobs",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                  height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  decoration: const InputDecoration.collapsed(
                    hintText: "Search jobs or Position"),),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Jobs For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              jobs_items(context)
            ],
          ),
        ),
      ),
    );
  }
  SizedBox jobs_items(BuildContext context){
    return SizedBox(
      height:MediaQuery.of(context).size.height / 2,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xffFFEBE7),
              borderRadius: BorderRadius.circular(10),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "asset/img/gojek.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Digital Marketing",
                  style: titlestyle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Senior",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xffFFEBE7),
              borderRadius: BorderRadius.circular(10),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "asset/img/shopee.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titlestyle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Intership",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xffFFEBE7),
              borderRadius: BorderRadius.circular(10),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "asset/img/bukalapak.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titlestyle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Intership",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xffFFEBE7),
              borderRadius: BorderRadius.circular(10),),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "asset/img/blibli.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Content Creator",
                  style: titlestyle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "1-3 Year Experience",
                  style: subTitle(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Fulltime",
                      style: positionText(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Intership",
                      style: positionText(),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
        ),
    );
  }

  TextStyle positionText(){
    return const TextStyle(color: Colors.grey, fontWeight: FontWeight.w400);
  }

  TextStyle subTitle() => const TextStyle(fontWeight: FontWeight.w500);

  TextStyle titlestyle(){
    return const TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  }
}