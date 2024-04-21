part of 'add_snacks.dart';

class AddSnacksParams {
  final String category;
  final List<int> snacks;

  AddSnacksParams({
    this.category = "Cemilan",
    required this.snacks,
  });
}
