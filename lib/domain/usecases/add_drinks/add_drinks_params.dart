part of 'add_drinks.dart';

class AddDrinksParams {
  final String category;
  final List<int> drinks;

  AddDrinksParams({
    this.category = "Minuman",
    required this.drinks,
  });
}
