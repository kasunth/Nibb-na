import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreenView extends StatefulWidget {
  final String id;
  final String description;

  VideoScreenView({this.id, this.description});

  @override
  _VideoScreenViewState createState() => _VideoScreenViewState();
}

class _VideoScreenViewState extends State<VideoScreenView> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(
            color: Colors.white, size: 100 // This isn't performing any changes

            ),
      ),
      body: Container(
          color: Colors.grey[900],
          child: SafeArea(
              child: Column(children: <Widget>[
            SizedBox(
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                aspectRatio: 16 / 9,
                onReady: () {
                  print('Player is ready.');
                },
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
                      child: Text(
                        widget.description,
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
            // CustomScrollView(slivers: <Widget>[
            //   SliverList(
            //     delegate: SliverChildListDelegate([
            //       Padding(
            //           padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
            //           child: Text(
            //             widget.description,
            //             style: TextStyle(color: Colors.white),
            //           ))
            //     ]),
            //   )
            // ])
          ]))),
    );
  }
}

// YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         aspectRatio: 16 / 9,
//         onReady: () {
//           print('Player is ready.');
//         },
//       ),
