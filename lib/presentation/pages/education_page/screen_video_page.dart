import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenVideoPage extends ConsumerStatefulWidget {
  final String? videoId;
  const ScreenVideoPage({super.key, required this.videoId});

  @override
  ConsumerState<ScreenVideoPage> createState() => _ScreenVideoPageState();
}

class _ScreenVideoPageState extends ConsumerState<ScreenVideoPage> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        controlsVisibleAtStart: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Optional: Dark background for fullscreen experience
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
          onReady: () {
            // You can add any functionality here that should happen when the player is ready
          },
        ),
        builder: (context, player) {
          return SafeArea(
            child: Column(
              children: [
                Expanded(child: player), // Ensure the player takes up the entire screen
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
