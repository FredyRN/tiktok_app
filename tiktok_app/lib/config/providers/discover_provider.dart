import 'package:flutter/material.dart';
import 'package:tiktok_app/config/internal/models/local_video_model.dart';
import 'package:tiktok_app/config/shared/data/local_video_post.dart';

import '../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideo = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    videos.addAll(newVideo);
    initialLoading = false;
    notifyListeners();
  }
}
