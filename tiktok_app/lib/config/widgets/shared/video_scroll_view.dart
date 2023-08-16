import 'package:flutter/material.dart';
import 'package:tiktok_app/config/domain/entities/video_post.dart';
import 'package:tiktok_app/config/widgets/shared/videos/full_screen_player.dart';
import 'package:tiktok_app/config/widgets/shared/videos/video_buttons.dart';

class VideoScrollView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(children: [
          SizedBox.expand(
            child: FullScreenPlayer(
              videoUrl: videoPost.videoUrl,
              caption: videoPost.videoCaption,
            ),
          ),
          Positioned(
              bottom: 40, right: 20, child: VideoButton(video: videoPost))
        ]);
      },
    );
  }
}
