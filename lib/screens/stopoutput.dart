import 'dart:convert';
import 'package:docker_app/models/Docker.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart';


class StopOut extends StatefulWidget {
  final String image;
  final String name;

  StopOut({this.image, this.name});

  @override
  StopOutState createState() => StopOutState(image: this.image, name: this.name);
}

class StopOutState extends State<StopOut> {
  final String image;
  final String name;

  StopOutState({this.image, this.name});

  var data = "";

  getData(String image, String name) async {
    var url =
        "http://13.233.244.198/cgi-bin/start?con_name=$name&image_name=$image";

    try {
      print(url);
      var response = await get(url);

      setState(() {
        data = response.body;
      });
    } catch (e) {
      return e;
    }
  }

  @override
  void initState() {
    getData(this.image, this.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Docker con = Docker(
        name: data==""?"":jsonDecode(data)["name"],
        image: data==""?"":jsonDecode(data)["image"],
        //size: data==""?"":jsonDecode(data)["size"],
        status: data==""?"":jsonDecode(data)["status"]);
    return Scaffold(
      appBar: AppBar(title: Text("Stoping Container")),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text("Container Name"),
                    SizedBox(height: 20,),
                    Text(con.name),
                  ],
                ),
                Row(
                  children: [
                    Text("Image Name"),
                    SizedBox(width: 20,),
                    Text(con.image),
                  ],
                ),
                Row(
                  children: [
                    Text("Status    "),
                    Text(con.status),
                  ],
                ),
                Row(
                  children: [
                    Text("Size"),
                    SizedBox(width: 20,),
                    // Text(con.size),
                  ],
                ),
              ],
            )).box.gray400.rounded.border(color: Colors.blue, width: 2).make(),
      ),
    );
  }
}
