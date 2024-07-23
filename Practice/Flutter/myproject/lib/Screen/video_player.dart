// flutter pub add video_player
// flutter pub add chewie
// flutter pub add youtube_player_flutter

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  @override

  late VideoPlayerController _videoController;
  late ChewieController _chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController = VideoPlayerController.asset("assets/butterfly.mp4");
    //_videoController = VideoPlayerController.networkUrl(Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"));
    _chewieController = ChewieController(videoPlayerController: _videoController, autoPlay: true, looping: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoController.dispose();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video_Player"),
      ),
      body: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: SizedBox(
          width: _videoController.value.size.width,
        child: Chewie(controller: _chewieController),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(_videoController.value.isPlaying ? Icons.pause : Icons.play_arrow),
        onPressed: (){
            setState(() {
              if(_videoController.value.isPlaying){
                _videoController.pause();
              }
              else{
                _videoController.play();
              }
            });
      },
      ),
    );
  }
}