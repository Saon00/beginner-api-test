import 'package:apipractise/components/urls.dart';

import '../models/post.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  // get posts

  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse(URLs.jsonURL);
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }

    return null;
  }
}

// crate a widget of container

