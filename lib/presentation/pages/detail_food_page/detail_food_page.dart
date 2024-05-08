import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/foods_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class DetailFoodPage extends ConsumerStatefulWidget {
  final String? category;

  const DetailFoodPage({
    super.key,
    required this.category,
  });

  @override
  ConsumerState<DetailFoodPage> createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends ConsumerState<DetailFoodPage> {
  final Map<String, bool> _isChecked = {}; // Map to store checked state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category!),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0),
            child: Column(
              children: [
                ...ref.watch(foodsProvider).whenOrNull(
                          data: (food) => food.map(
                            (e) => CheckboxListTile(
                              value: _isChecked[e.id.toString()] ?? false,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked[e.id.toString()] = value!;
                                  debugPrint(e.id.toString());
                                });
                              },
                              title: Text('${e.name}'),
                              subtitle: Row(
                                children: [
                                  Text(
                                    '${e.calories} kkal',
                                  ),
                                  horizontalSpace(5),
                                  Text(
                                    '${e.carbohydrate} karbohidrat',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ) ??
                    [
                      CircularProgressIndicator(),
                    ],
              ],
            ),
          )
        ],
      ),
      floatingActionButton: _isChecked.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {
                List<int> checkedIds = _isChecked.entries
                    .where((entry) => entry.value)
                    .map((entry) => int.parse(entry.key))
                    .toList();

                if (checkedIds.isNotEmpty) {
                  ref
                      .watch(foodsProvider.notifier)
                      .addFood(foods: checkedIds, category: widget.category!);
                }
                debugPrint(widget.category);
                debugPrint("Checked IDs: $checkedIds");
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text('Berhasil'),
                        content: Text('Data berhasil disimpan'),
                        actions: [
                          TextButton(
                              style: TextButton.styleFrom(
                                textStyle:
                                    Theme.of(context).textTheme.labelLarge,
                              ),
                              onPressed: () {
                                ref.read(routerProvider).pop();
                              },
                              child: Text('OK'))
                        ],
                      );
                    });
              },
            )
          : _isChecked.isEmpty
              ? null
              : null,
    );
  }
}
