import 'package:sanberappflutter/tugas/tugas15/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman 2"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_3);
              }, 
              child: Text("Menuju Halaman 3")),
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_1);
              }, 
              child: Text("Kembali ke Halaman 1"))
          ],
        ),
      ),
    );
  }
}