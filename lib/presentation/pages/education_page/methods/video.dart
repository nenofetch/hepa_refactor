import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hepa/domain/entities/education.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
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
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              YoutubePlayerBuilder(
                                  player: YoutubePlayer(
                                    showVideoProgressIndicator: true,
                                    controller: YoutubePlayerController(
                                      flags: YoutubePlayerFlags(
                                          autoPlay: false,
                                          controlsVisibleAtStart: true),
                                      initialVideoId:
                                          YoutubePlayer.convertUrlToId(e.link)
                                              .toString(),
                                    ),
                                  ),
                                  builder: (context, player) {
                                    return Column(
                                      children: [player],
                                    );
                                  }),
                              Text(
                                e.title,
                                style: GoogleFonts.poppins().copyWith(
                                  color: ghostWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              verticalSpace(20),
                              HtmlWidget(
                                e.description,
                                textStyle: TextStyle(
                                  color: ghostWhite,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        verticalSpace(40),
                      ],
                    ))
                .toList(),
          ),
          error: (error, stackTrace) => Text('Error'), // Handle error case
          loading: () =>
              Center(child: CircularProgressIndicator()), // Handle loading case
        ),
      ),
    ];
