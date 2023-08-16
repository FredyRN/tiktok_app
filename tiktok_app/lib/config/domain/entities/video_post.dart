class VideoPost {
  final String videoCaption;
  final String videoUrl;
  final int videoLikes;
  final int videoViews;

  VideoPost(
      {required this.videoCaption,
      required this.videoUrl,
      this.videoLikes = 0,
      this.videoViews = 0});
}
