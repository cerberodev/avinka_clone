import 'dart:collection';

import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  HashMap<String, int> _items = HashMap<String, int>();
  HashMap<String, int> get items => _items;
  void deleteItem(String productId) {
    if (_items.containsKey(productId)) {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void updateItems(String productId, int aditionalItems) {
    if (_items.containsKey(productId)) {
      _items[productId] += aditionalItems;
      if (_items[productId] <= 0) {
        _items.remove(productId);
      }
    } else {
      _items[productId] = aditionalItems;
    }

    notifyListeners();
  }
}
