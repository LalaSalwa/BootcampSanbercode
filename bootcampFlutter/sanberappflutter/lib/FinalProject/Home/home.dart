import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.book),
      //       label: 'Cat n Dog',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Account',
      //     ),
      //   ],
      // ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const Text.rich(TextSpan(
                text: "Hello, lala salwa",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100),
                  child: Image.asset(
                    'asset/img/catdoggrass.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 11, 32, 133),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Container(
                        child: Text(
                          "Member",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  Column(children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Icon(
                        Icons.menu_book,
                        color: Color.fromARGB(255, 11, 32, 133),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Container(
                        child: Text(
                          "Animal Care",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                  Column(children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Icon(
                        Icons.house,
                        color: Color.fromARGB(255, 11, 32, 133),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Container(
                        child: Text(
                          "Hotel",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              const Text.rich(TextSpan(
                text: "Information",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 190,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text.rich(TextSpan(
                            text: "Cat n Dog",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 10),
                          child: Text.rich(TextSpan(
                            text: "Lihat semua",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,),
                          )),
                        ),
                      ]),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('asset/img/kittenpuppy.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cutie Kitten and Puppy ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "April",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Divider()
                                ],
                              ))
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('asset/img/kittenpuppy.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cutie Kitten and Puppy ",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "April",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Divider()
                                ],
                              ))
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
