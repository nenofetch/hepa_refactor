import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/providers/hepa/consultations_provider.dart';

import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/widgets/chat.dart';

class ConsultationPage extends ConsumerStatefulWidget {
  const ConsultationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConsultationPageState();
}

class _ConsultationPageState extends ConsumerState<ConsultationPage> {
  @override
  Widget build(BuildContext context) {
    var auth = ref.watch(userDataProvider);
    var chat = ref.watch(consultationsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                ...chat
                        .whenOrNull(
                          data: (data) => data.map(
                            (e) => Padding(
                              padding: EdgeInsets.only(bottom: 30),
                              child: Chat(consultation: e, user: auth.value!),
                            ),
                          ),
                        )
                        ?.toList() ??
                    []
              ],
            ),

            // // // chat.when(
            // // //   skipLoadingOnRefresh: true,
            // // //   data: (data) => ListView.builder(
            // // //     itemCount: data.length,
            // // //     itemBuilder: (context, index) {
            // // //       final consultation = data[index];
            // // //       return Column(
            // // //         children: [
            // // //           BubbleNormal(
            // // //             text: consultation.message,
            // // //             isSender: consultation.senderId == auth.value!.id
            // // //                 ? true
            // // //                 : false,
            // // //             tail: true,
            // // //             seen: consultation.status == 'read' ? true : false,
            // // //             color: Color(0xFF1B97F3),
            // // //             textStyle: TextStyle(
            // // //               fontSize: 20,
            // // //               color: Colors.white,
            // // //               fontFamily: 'Roboto',
            // // //             ),
            // // //           ),
            // // //           verticalSpace(100),
            // // //         ],
            // // //       );
            // // //     },
            // // //   ),
            // //   error: (error, stackTrace) => Center(
            // //     child: Text('$error'),
            // //   ),
            // //   loading: () => Skeleton.leaf(
            // //     child: ListView.builder(
            // //       itemCount: 10,
            // //       itemBuilder: (context, index) {
            // //         return BubbleNormal(
            // //           text: '',
            // //         );
            // //       },
            // //     ),
            // //   ),
            // ),
            MessageBar(
              onSend: (value) {
                ref
                    .watch(consultationsProvider.notifier)
                    .addConsultation(message: value);
                ref.invalidate(consultationsProvider);
              },
              actions: [
                // Padding(
                //   padding: EdgeInsets.only(left: 8, right: 8),
                //   child: InkWell(
                //     child: Icon(
                //       Icons.camera_alt,
                //       color: Colors.green,
                //       size: 24,
                //     ),
                //     onTap: () {},
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
