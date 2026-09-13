import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt counter=0.obs;

  void increment(){
 counter ++;
  }
  void increment2(){
    counter+2;
  }
  void increment3(){
    counter+3;
  }
}