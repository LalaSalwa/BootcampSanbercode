import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/FinalProject/Controller/cats_controller.dart';
import 'package:sanberappflutter/FinalProject/Dataclass/Cats.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // Future getCats() async {
  //   Map<String, String> requestHeaders = {
  //      'Content-type': 'application/json',
  //      'Accept': 'application/json',
  //      'x-api-key': 'rPVFSThAwPPYYpCsCWcxQA==AuU8DyEQf1VKhRhb'
  //    };

  //   final response =
  //       await http.get(Uri.parse('https://api.api-ninjas.com/v1/cats?min_weight=1'), headers: requestHeaders);

  
  //   if (response.statusCode == 200) {
      
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     // return Cats.fromJson(json.decode(response.body) as Map<String, dynamic>) ;
  //     Iterable it = jsonDecode(response.body);
  //     List<Cats> data = it.map((e) => Cats.fromJson(e)).toList();
  //     return data;
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }

  late Future<List<Cats>> listCat;
  CatsController catsController = CatsController();

  String gambar = '';
  String nama = "";
  String asal = '';

  Future<List<Cats>> getCats() async {
    return await catsController.getCats();
  }


  @override
  void initState() {
    listCat = getCats() as Future<List<Cats>>;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Cats List",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        body: Center(
          child: FutureBuilder<List<Cats>>(
          future: listCat,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(top: 10),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [

                    for (var i = 0; i < snapshot.data!.length; i++)

                    Container(
                        margin: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.network(
                                snapshot.data![i].gambar,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data![i].nama,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  Text(
                                    snapshot.data![i].asal,
                                    maxLines: 1,
                                    style: TextStyle(fontSize: 11, overflow: TextOverflow.ellipsis),
                                  ),
                                ],
                              ),
                            )
                          ],
                    )),
                  ],
                ));
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        )
        ));
  }
}
