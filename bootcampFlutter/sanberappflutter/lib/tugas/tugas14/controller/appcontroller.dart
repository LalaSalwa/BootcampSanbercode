// import 'dart:developer';
import 'package:sanberappflutter/tugas/tugas14/services/services.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/tugas/tugas14/model/postmode.dart';

class AppController extends GetxController {
  var getposts = <Postmodel>[].obs;
  Services services = Services();
  var postloading = true.obs;
  @override
  void onInit(){
    callpostmethod();
    super.onInit();
  }
  callpostmethod() async{
    try{
      postloading.value = true;
      var result = await services.getallposts();
      if (result != null){
        getposts.assignAll(result);
      } else{
        print("null");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}