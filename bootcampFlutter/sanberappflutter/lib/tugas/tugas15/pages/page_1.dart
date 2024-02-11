import 'package:sanberappflutter/tugas/tugas15/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Halaman 1"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_2);
              }, 
              child: const Text("Menuju Halaman 2"))
          ],
        ),
      ),
    );
  }
}