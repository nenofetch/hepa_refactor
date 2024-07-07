import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/anthopometries_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';
import 'package:tab_container/tab_container.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class AnthropometriPage extends ConsumerWidget {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightBMRController = TextEditingController();
  final TextEditingController heightBMRController = TextEditingController();

  final List<String> activities = [
    'Minimal',
    'Ringan',
    'Sedang',
    'Berat',
    'Ekstra Berat'
  ];

  final valueListenable = ValueNotifier<String?>(null);



  AnthropometriPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: TabContainer(
          borderRadius: BorderRadius.circular(10),
          tabBorderRadius: BorderRadius.circular(10),
          selectedTextStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
          ),
          unselectedTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
          tabs: [Text('IMT Kalkulator'), Text('BMR & TDEE Kalkulator')],
          children: [
            // IMT Kalkulator
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Text(
                        'IMT Kalkulator',
                        style: TextStyle(
                            fontSize: 24, fontWeight: bold, color: blackColor),
                      ),
                      verticalSpace(50),
                      HepaTextField(
                          textInputType: TextInputType.number,
                          controller: weightController,
                          hintText: 'Berat Badan/kg'),
                      verticalSpace(20),
                      HepaTextField(
                          textInputType: TextInputType.number,
                          controller: heightController,
                          hintText: 'Tinggi Badan/m'),
                      verticalSpace(20),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            double heightInCm =
                                double.parse(heightController.text);
                            double heightInM = heightInCm / 100;

                            ref
                                .read(anthropometriesProvider.notifier)
                                .checkAnthropometry(
                                  weight: double.parse(weightController.text),
                                  height: heightInM,
                                );
                            debugPrint('kok');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blackColor,
                            foregroundColor: backgroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Hitung IMT',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: medium,
                              color: ghostWhite,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(100),
                      Text(
                        'Indeks Massa Tubuh',
                        style: TextStyle(
                            fontSize: 24, fontWeight: bold, color: blackColor),
                      ),
                      verticalSpace(10),
                      Text(
                        ' ${ref.watch(anthropometriesProvider).valueOrNull?.imt.toStringAsFixed(2) ?? ''}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: bold, color: blackColor),
                      ),
                      verticalSpace(10),
                      Text(
                        'Kategori IMT',
                        style: TextStyle(
                            fontSize: 24, fontWeight: bold, color: blackColor),
                      ),
                      verticalSpace(10),
                      Text(
                        ' ${ref.watch(anthropometriesProvider).valueOrNull?.result ?? ''}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: bold,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // BMR & TDEE Kalkulator
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'BMR & TDEE Kalkulator',
                        style: TextStyle(
                            fontSize: 24, fontWeight: bold, color: blackColor),
                      ),
                      verticalSpace(50),
                      HepaTextField(
                          textInputType: TextInputType.number,
                          controller: weightBMRController,
                          hintText: 'Berat Badan/kg'),
                      verticalSpace(20),
                      HepaTextField(
                          textInputType: TextInputType.number,
                          controller: heightBMRController,
                          hintText: 'Tinggi Badan/m'),
                      verticalSpace(20),
                      Center(
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text('Pilih Aktivitias'),
                            isExpanded: true,
                            items: activities
                                .map((String item) => DropdownItem(
                                      value: item,
                                      height: 40,
                                      child: Text(
                                        item,
                                      ),
                                    ))
                                .toList(),
                            valueListenable: valueListenable,
                            onChanged: (String? value) {
                              valueListenable.value = value;
                            },
                            buttonStyleData: ButtonStyleData(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: blackColor),
                              ),
                              width: double.infinity,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
