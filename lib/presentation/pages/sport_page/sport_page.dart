import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/extensions/build_context_extension.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/sport_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';
import 'package:intl/intl.dart';

class SportPage extends ConsumerStatefulWidget {
  const SportPage({super.key});

  @override
  ConsumerState<SportPage> createState() => _SportPageState();
}

class _SportPageState extends ConsumerState<SportPage> {
  int _duration = 0;
  final TextEditingController _tglInputController = TextEditingController();

  @override
  void initState() {
    _tglInputController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olahraga'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...ref.watch(sportsProvider).whenOrNull(
                      data: (sport) => sport
                          .map(
                            (e) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return AlertDialog(
                                            title: Text(
                                                'Durasi Olahraga /15 menit'),
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                    'Nama Olahraga: ${e.name}'),
                                                verticalSpace(20),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (_duration > 0) {
                                                            _duration -= 15;
                                                          }
                                                        });
                                                      },
                                                      child: Icon(Icons.remove),
                                                    ),
                                                    Text(
                                                      '$_duration',
                                                      style:
                                                          primaryFont.copyWith(
                                                              fontSize: 30),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          _duration += 15;
                                                        });
                                                      },
                                                      child: Icon(Icons.add),
                                                    ),
                                                  ],
                                                ),
                                                verticalSpace(30),
                                                HepaTextField(
                                                  readOnly: true,
                                                  controller:
                                                      _tglInputController,
                                                  hintText: 'Tanggal Input',
                                                  suffixIcon: Icon(
                                                      Icons.calendar_month),
                                                  onTap: () async {
                                                    DateTime? pickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          DateTime.now(),
                                                      firstDate: DateTime(2020),
                                                      lastDate: DateTime.now(),
                                                    );
                                                    if (pickedDate != null) {
                                                      String formattedDate =
                                                          DateFormat(
                                                                  'yyyy-MM-dd')
                                                              .format(
                                                                  pickedDate);
                                                      setState(() {
                                                        _tglInputController
                                                                .text =
                                                            formattedDate;
                                                      });
                                                    }
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 60,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      ref
                                                          .watch(sportsProvider
                                                              .notifier)
                                                          .addActivitiesSport(
                                                              name: e.name,
                                                              duration: _duration
                                                                  .toString(),
                                                              tglInput:
                                                                  _tglInputController
                                                                      .text);

                                                      ref
                                                          .read(routerProvider)
                                                          .pop();
                                                      context.showSnackBar(
                                                        'Kegiatan olahraga berhasil ditambahkan!',
                                                      );
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          blackColor,
                                                      foregroundColor:
                                                          backgroundColor,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      'Submit',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: medium,
                                                        color: ghostWhite,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 10),
                                        height: 100,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              e.name,
                                              style: TextStyle(
                                                color: ghostWhite,
                                              ),
                                            ),
                                            verticalSpace(30),
                                            Row(
                                              children: [
                                                Text(
                                                  '${e.fiveMinutesCalories} kal/5 min',
                                                  style: TextStyle(
                                                    color: ghostWhite,
                                                  ),
                                                ),
                                                horizontalSpace(10),
                                                Text(
                                                  '${e.fifteenMinuteCalories} kal/15 min',
                                                  style: TextStyle(
                                                    color: ghostWhite,
                                                  ),
                                                ),
                                                horizontalSpace(10),
                                                Text(
                                                  '${e.oneHourCalories} kal/1 hour',
                                                  style: TextStyle(
                                                    color: ghostWhite,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      verticalSpace(10),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ) ??
                [
                  verticalSpace(10),
                  Center(child: CircularProgressIndicator()),
                ],
          ],
        ),
      ),
    );
  }
}
