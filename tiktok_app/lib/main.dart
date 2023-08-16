import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_app/config/providers/discover_provider.dart';
import 'package:tiktok_app/config/screens/discover/discover_screen.dart';
import 'package:tiktok_app/config/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage(),
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
