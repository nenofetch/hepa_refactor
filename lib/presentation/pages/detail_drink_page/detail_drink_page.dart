import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/drink_adds.dart';
import 'package:hepa/presentation/providers/hepa/drinks_provider.dart';
import 'package:hepa/presentation/providers/usecases/add_drinks.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class DetailDrinkPage extends ConsumerStatefulWidget {
  final String? category;

  const DetailDrinkPage({
    super.key,
    required this.category,
  });

  @override
  ConsumerState<DetailDrinkPage> createState() => _DetailDrinkPageState();
}

class _DetailDrinkPageState extends ConsumerState<DetailDrinkPage> {
  final Map<String, bool> _isChecked = {}; // Map to store checked state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category}'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                children: [
                  ...ref.watch(getDrinksProvider).whenOrNull(
                            data: (drink) => drink.map(
                              (e) => Column(
                                children: [
                                  CheckboxListTile(
                                    value: _isChecked[e.id.toString()] ?? false,
                                    onChanged: (value) {
                                      setState(() {
                                        _isChecked[e.id.toString()] = value!;
                                        print(e.id);
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
                  .watch(drinkAddsProvider.notifier)
                  .addFood(drinks: checkedIds);
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
                            textStyle: Theme.of(context).textTheme.labelLarge,
                          ),
                          onPressed: () {
                            ref.read(routerProvider).pop();
                          },
                          child: Text('OK'))
                    ],
                  );
                });

          },
        ) : const SizedBox()
    );
  }
}
