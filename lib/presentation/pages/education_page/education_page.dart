import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/pages/education_page/methods/video.dart';
import 'package:hepa/presentation/providers/hepa/education_provider.dart';

class EducationPage extends ConsumerWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ...video(educations: ref.watch(getEducationsProvider), ref: ref),
          ],
        ),
      ),
    );
  }
}
