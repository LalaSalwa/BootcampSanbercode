import 'package:sanberappflutter/tugas/tugas14/controller/appcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDataScreenStateManagament extends StatelessWidget {
  const GetDataScreenStateManagament ({super.key}); 
  @override
  Widget build(BuildContext context){
    var controller = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management Getx"),
      ),
      body: Column(
        children: [
          Expanded(child: Obx(() {
            return controller.postloading.value
              ? const Center(
                child: CircularProgressIndicator(),
              )
              : ListView.builder(
                itemCount: controller.getposts.length,
                itemBuilder: (context, index) {
                  var item = controller.getposts[index];
                  return Card(
                    child: ListTile(
                      title: Text(item.title),
                      subtitle: Text(item.body),
                      leading: Text(item.id.toString()),
                    ),
                  );
                });
          }))
        ],
      ),
    );
  }
}