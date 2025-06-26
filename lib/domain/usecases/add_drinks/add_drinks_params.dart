part of 'add_drinks.dart';

class AddDrinksParams {
  final String category;
  final List<int> drinks;
  final String tglInput;

  AddDrinksParams({
    this.category = "Minuman",
    required this.drinks,
    required this.tglInput,
  });
}
