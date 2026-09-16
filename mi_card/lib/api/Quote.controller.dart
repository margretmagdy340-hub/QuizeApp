import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mi_card/api/app.dart';
import 'package:mi_card/api/service.dart';

class QuoteController extends GetxController {
  final QuoteService service =QuoteService();

  final quotes = <Quote> [].obs;
  final isloading =false.obs;
  final errorMessage ="".obs;


  







}   