import 'package:flutter/foundation.dart';

class CardProvider with ChangeNotifier{
  Map<String,CardItem> _items = {};

  Map<String,CardItem> get items{
     return {..._items};
  }

  int get itemCount{
    return _items.length;
  }

  void addItem(String productId, double price, String title){
    if(_items.containsKey(productId)){
      _items.update(productId, (existingCardItem) => CardItem(
          id: existingCardItem.id,
          title: existingCardItem.title,
          quantity: existingCardItem.quantity + 1,
          price: existingCardItem.price
        )
      );
    }else{
      _items.putIfAbsent(productId, () => CardItem(id:DateTime.now().toString(), title: title, price: price, quantity: 1));
    }
    notifyListeners();
  }
}

class CardItem{
  final String id;
  final String title;
  final int quantity;
  final double price;

  CardItem({@required this.id, @required this.title, @required this.quantity, @required this.price});
}