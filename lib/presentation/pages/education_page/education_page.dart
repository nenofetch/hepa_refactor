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
            // ...ref.watch(getEducationsProvider).whenOrNull(
            //           data: (data) => data.map(
            //             (e) => Padding(
            //               padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //               child: Column(
            //                 children: [
            //                   Container(
            //                     padding: EdgeInsets.symmetric(
            //                       horizontal: 10,
            //                       vertical: 10,
            //                     ),
            //                     decoration: BoxDecoration(
            //                       color: Colors.blueGrey,
            //                       borderRadius: BorderRadius.circular(12),
            //                     ),
            //                     child: Column(
            //                       mainAxisSize: MainAxisSize.max,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           e.title,
            //                           style: GoogleFonts.poppins().copyWith(
            //                             color: ghostWhite,
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 20,
            //                           ),
            //                         ),
            //                         verticalSpace(20),
            //                         GestureDetector(
            //                           onTap: (Education education) => ref
            //                               .read(routerProvider)
            //                               .pushNamed('detail-video'),
            //                           child: Image(
            //                             height: 200,
            //                             fit: BoxFit.cover,
            //                             image: NetworkImage(
            //                                 '$assetsUrl/storage/educations/${e.thumbnail}'),
            //                           ),
            //                         ),
            //                         HtmlWidget(
            //                           e.description,
            //                           textStyle: TextStyle(
            //                             color: ghostWhite,
            //                             overflow: TextOverflow.ellipsis,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   verticalSpace(10),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ) ??
            //     [
            //       Center(
            //         child: CircularProgressIndicator(),
            //       )
            //     ]
          ],
        ),
      ),
    );
  }
}
