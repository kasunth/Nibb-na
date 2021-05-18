import 'package:flutter/material.dart';
import 'package:nibbana_test/models/channel_model.dart';
import 'package:nibbana_test/models/video_model.dart';
import 'package:nibbana_test/ui/video/video_screen.dart';
import 'package:nibbana_test/servicers/api_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:developer';

class VideoScreen extends StatefulWidget {
  @override
  _VideoScreenState createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  Channel _channel;
  // GetLocal getLocal;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      getLocal();
      _initChannel();
    });
  }

  _initChannel() async {
    var id = await getLocal();
    print(id);
    Channel channel =
        await APIService.instance.fetchChannel(channelId: id, nextpage: "");
    print(channel);
    setState(() {
      _channel = channel;
    });
  }

  getLocal() async {
    String youtubeChannelId = 'UCwTkvCz1d-3F1bXbqzfedVQ';

    if (context.locale == Locale('en', 'US')) {
      youtubeChannelId = 'UCNTImXpZuWfgmB5n5ncIoNQ';
    } else {
      youtubeChannelId = 'UCwTkvCz1d-3F1bXbqzfedVQ';
    }
    return youtubeChannelId;
  }

  _buildProfileInfo() {
    const color = const Color.fromRGBO(134, 53, 53, 1);
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 20.0,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 28.0,
            backgroundImage: NetworkImage(_channel.profilePictureUrl),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _channel.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${_channel.subscriberCount} subscribers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildVideo(Video video) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                VideoScreenView(id: video.id, description: video.description)),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        // padding: EdgeInsets.all(10.0),
        height: 250,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 3),
              blurRadius: 20.0,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image(
                // width: 150.0,

                image: NetworkImage(video.thumbnailUrl),
                fit: BoxFit.cover,
                width: double.maxFinite,

                // height: 200,
              ),
            )),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 20, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,

                children: [
                  Text(
                    video.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  // Text("data")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
    List<Video> allVideos = _channel.videos..addAll(moreVideos);
    setState(() {
      _channel.videos = allVideos;
    });
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    // log(context.locale.toString(), name: '${this} # locale Context');
    return Scaffold(
      body: _channel != null
          ? NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollDetails) {
                if (!_isLoading &&
                    _channel.videos.length != int.parse(_channel.videoCount) &&
                    scrollDetails.metrics.pixels ==
                        scrollDetails.metrics.maxScrollExtent) {
                  _loadMoreVideos();
                }
                return false;
              },
              child: ListView.builder(
                itemCount: 1 + _channel.videos.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return _buildProfileInfo();
                  }
                  Video video = _channel.videos[index - 1];
                  return _buildVideo(video);
                },
              ),
            )
          : Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor, // Red
                ),
              ),
            ),
    );
  }
}
