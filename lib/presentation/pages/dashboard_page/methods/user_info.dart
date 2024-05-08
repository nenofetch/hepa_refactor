import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Widget userInfo(WidgetRef ref) => Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:
                        ref.watch(userDataProvider).valueOrNull?.image != null
                            ? NetworkImage('https://picsum.photos/200/300')
                            : NetworkImage('https://picsum.photos/200/300'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ref.read(routerProvider).pushNamed('consultation');
                },
                child: Image(
                  height: 50,
                  color: ghostWhite,
                  image: AssetImage('assets/icon_chat.png'),
                ),
              )
            ],
          ),
          verticalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hai ${ref.watch(userDataProvider).when(
                      data: (user) => user?.name!.split(' ').first,
                      error: (error, stackTrace) => '',
                      loading: () => 'Loading ...',
                    )}',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: bold,
                  color: ghostWhite,
                ),
              ),
              Text(
                'Selamat Datang di Health Planner',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: light,
                  color: ghostWhite,
                ),
              ),
            ],
          )
        ],
      ),
    );
