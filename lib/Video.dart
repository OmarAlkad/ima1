import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoApp extends StatefulWidget {
  VideoPlayerController controller;

  Function setOrientation;

  VideoApp({this.setOrientation});

  @override
  _VideoAppState createState() =>
      _VideoAppState(setOrientation: setOrientation);
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;
  bool chat = false;
  Function setOrientation;

  bool _toolVisible = true;

  _VideoAppState({this.setOrientation});

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/images/1.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.initialized
          ? Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
                Center(
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          setOrientation();
                        });
                      },
                      icon: Icon(
                        Icons.center_focus_weak,
                        color: Colors.white,
                      ),
                    ))
              ],
            )
          : Container(
              color: Colors.black,
              child: Center(
                child: Icon(
                  Icons.error_outline,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
