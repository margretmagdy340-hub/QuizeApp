import 'package:dio/dio.dart';
import 'package:mi_card/api/quotemodel.dart';

class QuoteService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl:"https://dummyjson.com/quotes"
    ),
  );
  
  Future<List<Quote>> getQuotesservice() async{
final response = await dio.get("/quotes");

final List quotes = response.data['quotes'];

return quotes
       .map((quote) => Quote.formJason(quote))
       .toList();

  }
}