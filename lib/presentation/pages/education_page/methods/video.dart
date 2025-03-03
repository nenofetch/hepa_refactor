import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

List<Widget> video({
  required AsyncValue<List<Education>> educations,
  required WidgetRef ref,
}) =>
    [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: educations.when(
          data: (data) => Column(
            children: data
                .map((e) => Column(
                      children: [
                        InkWell(
                          onTap: () {
                            final videoId = YoutubePlayer.convertUrlToId(e.link);
                            ref.read(routerProvider).pushNamed(
                              'video-play',
                              pathParameters: {'videoId': videoId!},
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Video thumbnail display
                                Image.network(
                                  YoutubePlayer.getThumbnail(videoId: YoutubePlayer.convertUrlToId(e.link)!),
                                  height: 200,
                                  fit: BoxFit.contain,
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
                    ))
                .toList(),
          ),
          error: (error, stackTrace) => const Text('Gagal Mendapatkan Data'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    ];