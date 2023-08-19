import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_app/config/internal/datasources/local_video_datasource_impl.dart';
import 'package:tiktok_app/config/internal/repositories/video_post_repository_impl.dart';
import 'package:tiktok_app/config/providers/discover_provider.dart';
import 'package:tiktok_app/config/screens/discover/discover_screen.dart';
import 'package:tiktok_app/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImplementation(
        videoDatasource: LocalVideoDatasource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videoPostRepository: videoPostRepository)
                ..loadNextPage(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          title: 'Colors APP - FredyRN',
          home: const DiscoverScreen()),
    );
  }
}
