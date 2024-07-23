import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MyYoutubePlayer extends StatefulWidget {
  const MyYoutubePlayer({super.key});

  @override
  State<MyYoutubePlayer> createState() => _MyYoutubePlayerState();
}

class _MyYoutubePlayerState extends State<MyYoutubePlayer> {
  String? videoID = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=4uJLLev3Ulg");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      videoID = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=4uJLLev3Ulg");
    });
  }
  
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube_Player"),
      ),
      body: YoutubePlayer(controller: YoutubePlayerController(
        initialVideoId: videoID!,
        flags: YoutubePlayerFlags(autoPlay: true, mute: false)),
        showVideoProgressIndicator: true,
        ),
    );
  }
}