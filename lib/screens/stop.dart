import 'package:docker_app/screens/stopoutput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';


class Stop extends StatefulWidget {
  @override
  _StopState createState() => _StopState();
}

class _StopState extends State<Stop> {
  @override
  Widget build(BuildContext context) {

    TextEditingController imageName = TextEditingController();
    TextEditingController containerName = TextEditingController();

    return Scaffold(
      bottomSheet: FlatButton(onPressed: (){
        Navigator.push(
            context,
            MaterialPageRoute(

                builder: (context) => StopOut(image:imageName.text,name:containerName.text)));
      },
        shape: Vx.withRounded(10),
        child: Text("Stop",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        color: Colors.blue,).wh(context.screenWidth,50).p16(),
      appBar: AppBar(title: Text("Stop The Container"),centerTitle: true,elevation: 0.0,),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(

          children: [
            SizedBox(height: 20,),
            TextFormField(
              controller: containerName,
              inputFormatters: [
                LengthLimitingTextInputFormatter(50),
              ],
              showCursor: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                labelText: "Enter The Container Name",
                hintMaxLines: 2,
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
