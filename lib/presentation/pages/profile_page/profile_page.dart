import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/pages/profile_page/methods/profile_item.dart';
import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(children: [
            verticalSpace(20),
            verticalSpace(20),
            const Divider(),
            verticalSpace(20),
            profileItem('Update Profile'),
            verticalSpace(20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(userDataProvider.notifier).logout();
                  ref.read(routerProvider).pushNamed('login');
                },
                child: const Text('Logout'),
              ),
            ),
            const Text(
              'Version 0.0.1',
              style: TextStyle(fontSize: 12),
            ),
            verticalSpace(100),
          ]),
        ),
      ],
    );
  }
}
