import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/presentation/providers/hepa/education_provider.dart';

class DetailVideoPage extends ConsumerWidget {
  final Education education;
  const DetailVideoPage({
    super.key,
    required this.education,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          ...ref.watch(getEducationsProvider).whenOrNull(
                    data: (data) => data.map((e) => Column(
                          children: [],
                        )),
                  ) ??
              []
        ],
      ),
    );
  }
}
