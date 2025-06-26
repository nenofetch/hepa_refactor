part of 'add_snacks.dart';

class AddSnacksParams {
  final String category;
  final List<int> snacks;
  final String tglInput;
  AddSnacksParams({
    this.category = "Cemilan",
    required this.snacks,
    required this.tglInput,
  });
}
