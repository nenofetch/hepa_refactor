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
  DateTime _selectedDateTime = DateTime.now(); // Default to current date/time

  Future<void> _selectDateTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime.now().subtract(Duration(days: 30)),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && mounted) {
      setState(() {
        _selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          _selectedDateTime.hour,
          _selectedDateTime.minute,
        );
      });
    }
  }

  String _formatDateTime(DateTime dateTime) {
    return '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category!),
        actions: [
          // Date/Time selector button
          Container(
            margin: EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: _selectDateTime,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 16,
                      color: Colors.black,
                    ),
                    SizedBox(width: 4),
                    Text(
                      _formatDateTime(_selectedDateTime),
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
              child: Icon(Icons.save),
              onPressed: () {
                List<int> checkedIds = _isChecked.entries
                    .where((entry) => entry.value)
                    .map((entry) => int.parse(entry.key))
                    .toList();

                if (checkedIds.isNotEmpty) {
                  ref.watch(foodsProvider.notifier).addFood(
                      foods: checkedIds,
                      category: widget.category!,
                      tglInput: _selectedDateTime
                          .toString()); // Use selected date/time
                }
                debugPrint(widget.category);
                debugPrint("Checked IDs: $checkedIds");
                debugPrint("Selected DateTime: $_selectedDateTime");
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text('Berhasil'),
                        content: Text(
                            'Data berhasil disimpan untuk ${_formatDateTime(_selectedDateTime)}'),
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
