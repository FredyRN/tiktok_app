import 'package:tiktok_app/config/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getVideoByPage(int page);
  Future<List<VideoPost>> getFavoriteVideoByUser(String userID);
}
