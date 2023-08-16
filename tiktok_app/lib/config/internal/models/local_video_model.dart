import 'package:tiktok_app/config/domain/entities/video_post.dart';

class LocalVideoModel {
  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.videoLikes = 0,
      this.videoViews = 0});

  final String name;
  final String videoUrl;
  final int videoLikes;
  final int videoViews;

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'] ?? 'No name found.',
          videoUrl: json['videoUrl'] ?? 'No url found.',
          videoLikes: json['likes'] ?? 0,
          videoViews: json['views'] ?? 0);

  VideoPost toVideoPostEntity() =>
      VideoPost(videoCaption: name, videoUrl: videoUrl);
}
