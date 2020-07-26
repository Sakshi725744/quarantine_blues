import 'package:flutter/material.dart';
import 'package:quarantine_blues/screens/video_display.dart';
import 'package:quarantine_blues/models/search.dart';
import 'package:quarantine_blues/models/video.dart';
import 'package:quarantine_blues/services/implementation.dart';



class HomeScreen extends StatefulWidget {
  final String genre;

  const HomeScreen ({ Key key, this.genre }): super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Video> video_s;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    print(widget.genre);
    _initSearch();


  }
  _initSearch() async {
    List<Video> add_video = await APIService.instance
        .fetchSearch(playlistId: widget.genre.toString());
    setState(() {
      video_s = add_video;
    });
  }


  _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35.0,

          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "NEW CODE",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "NO subs",
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
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
          builder: (_) =>VideoScreen(id: 'CNXmb0yyz5I'),
        ),
      ),
      child: Container(
       // margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        padding: EdgeInsets.all(5.0),
        height: 80.0,
        decoration: BoxDecoration(
          color: const Color(0xfffffffff).withOpacity(0.75),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 1),
              blurRadius: 10.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image(
              width: 100.0,
              image: NetworkImage(video.thumbnailUrl),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: Text(
                video.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: video_s != null
          ?

         ListView.builder(
          itemCount: video_s.length,
          itemBuilder: (BuildContext context, int index) {
            Video video_new = video_s[index];
            return _buildVideo(video_new);

          },
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