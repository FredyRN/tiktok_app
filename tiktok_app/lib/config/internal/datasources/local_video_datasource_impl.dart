import 'package:tiktok_app/config/domain/datasource/video_post_datasource.dart';
import 'package:tiktok_app/config/domain/entities/video_post.dart';
import 'package:tiktok_app/config/internal/models/local_video_model.dart';
import 'package:tiktok_app/config/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideo = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideo;
  }
}
