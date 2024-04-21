import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/get_anthropometies.dart';
import 'package:hepa/presentation/widgets/hepa_text_field.dart';

class AnthropometriPage extends ConsumerWidget {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  AnthropometriPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var anthroData= ref.watch(getAnthropometriesProvider.notifier).getAnthro();
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                verticalSpace(50),
                HepaTextField(
                    textInputType: TextInputType.number,
                    controller: weightController, hintText: 'Berat Badan/kg'),
                verticalSpace(20),
                HepaTextField(
                  textInputType: TextInputType.number,
                    controller: heightController, hintText: 'Tinggi Badan/m'),
                verticalSpace(20),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      ref
                          .read(getAnthropometriesProvider.notifier)
                          .checkAnthropometry(
                              weight: double.parse(weightController.text),
                              height: double.parse(heightController.text));
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
