

import 'package:get/get.dart';

class HomeController  extends GetxController{
  final index = 0.obs;

  void onChangeIndex(int index){
    this.index.value = index;
  }
}