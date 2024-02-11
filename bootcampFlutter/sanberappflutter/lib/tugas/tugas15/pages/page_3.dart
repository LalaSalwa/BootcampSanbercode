import 'package:sanberappflutter/tugas/tugas15/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 2"),
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_2);
              }, 
              child: const Text("Kembali ke Halaman 2"))
          ],
        ),
      ),
    );
  }
}