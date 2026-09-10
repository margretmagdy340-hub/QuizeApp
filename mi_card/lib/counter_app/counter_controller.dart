import 'package:get/get_rx/get_rx.dart';

class CounterController {
RxInt counter=0.obs;
void increment(){
  counter++;
}
void decrement(){
  counter--;
}
}