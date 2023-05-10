import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simil_tiktok/presentation/provider/discover_provider.dart';
import 'package:simil_tiktok/presentation/widget/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(
      body: discoverProvider.initialLoading 
      ? const Center(child: CircularProgressIndicator( strokeWidth: 1,) )
      : VideoScrollableView(videos: discoverProvider.videos)
    );
  }
}