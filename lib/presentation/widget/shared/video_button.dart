import 'package:flutter/material.dart';
import 'package:simil_tiktok/domain/entities/video_post.dart';

import '../../../config/helpers/human_formats.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye),
      ],
    );
  }
}
class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  
  
  const _CustomIconButton(
    {
      super.key, 
      required this.value, 
      required this.iconData,
      
      iconColor
      }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, 
        icon: Icon(iconData,color: color ,size: 30,)),
        Text(HumanFormat.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}