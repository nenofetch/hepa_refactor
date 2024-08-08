import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/bmr_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';

class BmrTdeePage extends ConsumerWidget {
  const BmrTdeePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                      hintText: 'Tinggi Badan/cm'),
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
                  ),
                  verticalSpace(20),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        double heightInCm =
                            double.parse(heightBMRController.text);
                        double heightInM = heightInCm / 100;

                        ref.read(bmrsProvider.notifier).checkBMR(
                              weight: double.parse(weightBMRController.text),
                              height: heightInM,
                              activities: valueListenable.value!,
                            );

                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  title: Text('Perhitungan Berhasil'),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Kalkulasi BMR & TDEE berhasil\n Silahkan periksa hasilnya di menu Detail Riwayat',
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blackColor,
                        foregroundColor: backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'Hitung BMR & TDEE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: medium,
                          color: ghostWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
