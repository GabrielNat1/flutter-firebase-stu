import 'package:flutter/widgets.dart';
import 'package:myapp/model/dish.dart';

class BagProvider extends ChangeNotifier {
  List<Dish> dishesOnBag = [];

  addallDishes(List<Dish> dishes) {
    dishesOnBag.addAll(dishes);
    notifyListeners();
  }

  removeDish(Dish dish) {
    dishesOnBag.remove(dish);
    notifyListeners();
  }

  clearBag() {
    dishesOnBag.clear();
    notifyListeners();
  }

  Map<Dish, int> getMapByAmount() {
    Map<Dish, int> mapResult = {};

    for (Dish dish in dishesOnBag) {
      if (mapResult[dish] == null) {
        mapResult[dish] = 1;
      } else {
        mapResult[dish] = mapResult[dish]! + 1;
      }
    }

    return mapResult;
  }
}
