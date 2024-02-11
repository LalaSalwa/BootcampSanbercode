import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sanberappflutter/FinalProject/Dataclass/Cats.dart';

class CatsController {
  Map<String, String> requestHeaders = {
       'Content-type': 'application/json',
       'Accept': 'application/json',
       'x-api-key': 'rPVFSThAwPPYYpCsCWcxQA==AuU8DyEQf1VKhRhb'
     };

  final url = Uri.parse('https://api.api-ninjas.com/v1/cats?min_weight=1');

  Future<List<Cats>> getCats() async {
    try {
      final res = await http.get(url, headers: requestHeaders);

      if (res.statusCode == 200) {
        Iterable it = jsonDecode(res.body);

        List<Cats> data = it.map((e) => Cats.fromJson(e)).toList();

        // print(data);
        return data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}