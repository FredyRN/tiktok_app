import 'package:flutter/material.dart';
import 'package:tiktok_app/config/domain/repositories/video_post_repository.dart';

import '../domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));
    // final List<VideoPost> newVideo = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();
    final newVideo = await videoPostRepository.getVideoByPage(1);
    videos.addAll(newVideo);
    initialLoading = false;
    notifyListeners();
  }
}
