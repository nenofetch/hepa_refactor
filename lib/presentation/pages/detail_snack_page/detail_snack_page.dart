import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/pages/detail_snack_page/methods/snack_list.dart';
import 'package:hepa/presentation/providers/hepa/snack_adds.dart';
import 'package:hepa/presentation/providers/hepa/snacks_provider.dart';
import 'package:hepa/presentation/providers/usecases/get_snack_list.dart';

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                // SearchableList<Food>(
                //   initialList: [],
                //   builder: (Food food) => UserItem(user: user),
                //   filter: (value) => actors
                //       .where(
                //         (element) => element.name.toLowerCase().contains(value),
                //       )
                //       .toList(),
                //   emptyWidget: const EmptyView(),
                //   inputDecoration: InputDecoration(
                //     labelText: "Search Actor",
                //     fillColor: Colors.white,
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: const BorderSide(
                //         color: Colors.blue,
                //         width: 1.0,
                //       ),
                //       borderRadius: BorderRadius.circular(10.0),
                //     ),
                //   ),
                // ),
                Text(
                  'Detail ${widget.category}',
                  style: primaryFont.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                verticalSpace(10),

                ...ref.watch(getSnacksProvider).whenOrNull(
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

                // ...asyncFoodDetail
                //     .map(
                //       (foodDetail) => CheckboxListTile(
                //         title: Text(foodDetail.name.toString()),
                //         value: foodDetail.isSelected,
                //         onChanged: (value) {
                //           // ref.read(foodDetailProvider.notifier).toggle(foodDetail);
                //         },
                //       ),
                //     )
                //     .toList(),
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
                  .watch(snackAddsProvider.notifier)
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
