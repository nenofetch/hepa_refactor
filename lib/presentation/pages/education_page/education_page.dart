import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/education_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EducationPage extends ConsumerWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ref.watch(educationsProvider).whenOrNull(
                    data: (data) => Column(
                      children: data
                          .map(
                            (e) => Column(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final videoId =
                                        YoutubePlayer.convertUrlToId(e.link);
                                    // Send activity when user taps/plays video
                                    await ref
                                        .read(educationsProvider.notifier)
                                        .addEducationActivity(
                                            educationName:
                                                'Pengguna membuka ${e.title}',
                                            tglInput: DateTime.now()
                                                .toIso8601String());

                                    ref.read(routerProvider).pushNamed(
                                      'video-play',
                                      pathParameters: {'videoId': videoId!},
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Video thumbnail display
                                        Image.network(
                                          fit: BoxFit.cover,
                                          YoutubePlayer.getThumbnail(
                                              videoId:
                                                  YoutubePlayer.convertUrlToId(
                                                      e.link)!),
                                          height: 200,
                                          width: double.infinity,
                                        ),
                                        verticalSpace(10),
                                        // Title
                                        Text(
                                          e.title,
                                          style: GoogleFonts.poppins().copyWith(
                                            color: ghostWhite,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        verticalSpace(20),
                                        // Description
                                        HtmlWidget(
                                          e.description,
                                          textStyle: const TextStyle(
                                            color: ghostWhite,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                verticalSpace(40),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
