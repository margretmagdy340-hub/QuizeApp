class Quote{
  final int id;
  final String quote;
  final String author;

  Quote({
     required this.id, 
     required this. quote,
     required this .author,
  });
  factory Quote.formJason (Map<String, dynamic>jason){
  return Quote(id: jason["id"], 
  quote: jason['quote'],
   author: jason['author']);
   }
  }