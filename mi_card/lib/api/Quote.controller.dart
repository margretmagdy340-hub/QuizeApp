import 'package:get/get.dart';
import 'package:mi_card/api/quote_service.dart';
import 'package:mi_card/api/quotemodel.dart';
import 'package:mi_card/api/quotescreen.dart';

class QuoteController extends GetxController {
  final QuoteService service =QuoteService();

  final quotes = <Quote> [].obs;
  final isloading =false.obs;
  final errorMessage ="".obs;

@override
void onInit(){
  super.onInit();
  getQuotes();

}
Future<void>getQuotes() async{
  try{
    isloading.value=true;
    errorMessage.value="";

    final result = await service.getQuotesservice();
    quotes.assignAll(result);
  }
  catch(e){
    errorMessage.value="Something went wrong";
  }
finally{
  isloading.value=false;
}
}

}   