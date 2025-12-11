import 'Produtitem.dart';

class CartManager {
  static List<Product> items = [];

  static void add(Product product) {
    for (var item in items) {
      if (item.name == product.name) {
        item.quantity++;
        return;
      }
    }
    items.add(product);
  }

  static void remove(int index) {
    items.removeAt(index);
  }

  static void increase(int index) {
    items[index].quantity++;
  }

  static void decrease(int index) {
    if (items[index].quantity > 1) {
      items[index].quantity--;
    }
  }

  static double totalPrice() {
    double sum = 0;
    for (var item in items) {
      sum += item.price * item.quantity;
    }
    return sum;
  }
}
