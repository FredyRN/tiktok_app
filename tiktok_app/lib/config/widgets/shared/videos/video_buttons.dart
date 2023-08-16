import 'package:flutter/material.dart';
import 'package:tiktok_app/config/domain/entities/video_post.dart';
import 'package:tiktok_app/config/helpers/human_format.dart';

class VideoButton extends StatelessWidget {
  final VideoPost video;

  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.videoViews,
            iconData: Icons.favorite_outlined,
            iconColor: Colors.redAccent),
        _CustomIconButton(
            value: video.videoLikes, iconData: Icons.remove_red_eye_outlined)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        Text(HumanFormat.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
