import 'package:tiktok_app/config/domain/datasource/video_post_datasource.dart';
import 'package:tiktok_app/config/domain/entities/video_post.dart';
import 'package:tiktok_app/config/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImplementation implements VideoPostRepository {
  final VideoPostDatasource videoDatasource;

  VideoPostRepositoryImplementation({required this.videoDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoByPage(int page) async {
    return videoDatasource.getVideoByPage(page);
  }
}
