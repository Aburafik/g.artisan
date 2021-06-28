import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_artisan_app/models/artisan_model.dart';

class Service {
  String url = "https://ghartisanaipi.herokuapp.com/";

  Future<ArtisanList> getArtisanData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print(response.body);
      return ArtisanList.fromJson(json.decode(response.body));
    } else {
      throw {Exception("Cant locate $url")};
    }
  }
}
