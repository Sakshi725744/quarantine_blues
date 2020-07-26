import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:quarantine_blues/models/search.dart';
import 'package:quarantine_blues/models/video.dart';
import 'package:quarantine_blues/utilities/keys.dart';

class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'www.googleapis.com';
  String _nextPageToken = '';
  Iterable<dynamic> videos_show,id_video ;
  List<Video> video = [];
  List<String> id_vid = [];

  Future<List<Video>> fetchSearch({String playlistId}) async {
    video.clear();
    Map<String, String> parameters = {
      'part': 'snippet',
      'q': playlistId,
      'maxResults': '10',
      'key': API_KEY,

    };
    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/search',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    // Get Playlist Videos
    var response = await http.get(uri, headers: headers);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      List<dynamic> videosJson = data['items'];


      // Fetch first eight videos from uploads playlist

      videos_show=videosJson.map((v) => v['snippet']);
      videos_show.forEach((snippet) {
       video.add(
           Video(
             title: snippet['title'],
        thumbnailUrl: snippet['thumbnails']['high']['url'],
        channelTitle: snippet['channelTitle'],
      ));});

      return video;
    } else {
      throw json.decode(response.body)['error']['message'];
    }
  }

}