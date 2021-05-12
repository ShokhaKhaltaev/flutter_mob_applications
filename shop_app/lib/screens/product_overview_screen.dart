import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/badge.dart';
import '../providers/card.dart';
import '../widgets/gridview_products.dart';
import '../models/product_provider.dart';

enum filterOptions {
  Favorites,
  All
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    final productContainer = Provider.of<ProductsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('YAKO'),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (filterOptions selectedValue){
              setState(() {
                if(selectedValue == filterOptions.Favorites){
                  _showOnlyFavorites = true;
                }else{
                  _showOnlyFavorites = false;
                }
              });
            },
              itemBuilder: (_) => [
                PopupMenuItem(child: Text('Only Favorites'),
                value: filterOptions.Favorites,
                ),
                PopupMenuItem(child: Text('Show All'),
                value: filterOptions.All)
              ],
            icon: Icon(Icons.more_vert),
          ),
          Consumer<CardProvider> (builder: (_, cardData, child) => Badge(
            child: child,
            value: cardData.itemCount.toString(),
            ),
            child: IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
          ),
        ],
      ),
      body: ProductGridView(_showOnlyFavorites),
    );
  }
}
