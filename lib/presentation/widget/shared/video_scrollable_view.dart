 import 'package:flutter/material.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';
import 'package:simil_tiktok/presentation/widget/shared/video_button.dart';
import 'package:simil_tiktok/presentation/widget/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {

  final List <VideoPost> videos;
  const VideoScrollableView(
    {
      super.key, 
      required this.videos
    }
  );

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: ((context, index) {
        final VideoPost videoPost= videos[index];

        return Stack(
          children: [
            // video plater
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
              ),


            // botones
            Positioned(
              bottom: 30,
              right: 5,
              child: VideoButtons(video: videoPost))
          ],
        );
      }),
      
      
  
    );
  }
}


