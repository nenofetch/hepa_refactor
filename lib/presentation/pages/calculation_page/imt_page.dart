import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/anthopometries_provider.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';

class IMTPage extends ConsumerWidget {
  const IMTPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController weightController = TextEditingController();
    final TextEditingController heightController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                      hintText: 'Tinggi Badan/cm'),
                  verticalSpace(20),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        double heightInCm = double.parse(heightController.text);
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
                    ' ${ref.watch(anthropometriesProvider).value?.imt.toStringAsFixed(2) ?? ''}',
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
                    ' ${ref.watch(anthropometriesProvider).value?.result ?? ''}',
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
      ),
    );
  }
}
