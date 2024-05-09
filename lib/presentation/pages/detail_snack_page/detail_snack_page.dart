import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/snacks_provider.dart';

import '../../router/router_provider.dart';

class DetailSnackPage extends ConsumerStatefulWidget {
  final String? category;
  const DetailSnackPage({
    super.key,
    required this.category,
  });

  @override
  ConsumerState<DetailSnackPage> createState() => _DetailSnackPageState();
}

class _DetailSnackPageState extends ConsumerState<DetailSnackPage> {
  final Map<String, bool> _isChecked = {}; // Map to store checked state
  @override
  Widget build(BuildContext context) {
    // var asyncFoodDetail = ref.watch(foodDetailProvider(food: food));
    // make an list of checkbox base from asyncFoodDetail
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
                  ...ref.watch(snacksProvider).whenOrNull(
                            data: (drink) => drink.map(
                              (e) => Column(
                                children: [
                                  CheckboxListTile(
                                    value: _isChecked[e.id.toString()] ?? false,
                                    onChanged: (value) {
                                      setState(() {
                                        _isChecked[e.id.toString()] = value!;
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
                                  )
                                ],
                              ),
                            ),
                          ) ??
                      [
                        CircularProgressIndicator(),
                      ]
                ],
              ),
            )
          ],
        ),
        floatingActionButton: _isChecked.isNotEmpty
            ? FloatingActionButton(
                child: Icon(Icons.save),
                onPressed: () {
                  List<int> checkedIds = _isChecked.entries
                      .where((entry) => entry.value)
                      .map((entry) => int.parse(entry.key))
                      .toList();

                  if (checkedIds.isNotEmpty) {
                    ref
                        .watch(snacksProvider.notifier)
                        .addFood(snacks: checkedIds);
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
            : const SizedBox());
  }
}
