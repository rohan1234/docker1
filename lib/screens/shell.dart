import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class Shell extends StatefulWidget {
  @override
  _ShellState createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Linux Shell"),),
      body: TextFormField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          labelText: "Enter Command Here",
        ),
      ),
      bottomSheet: FlatButton(onPressed: (){},
        shape: Vx.withRounded(10),
        child: Text("Run",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
        color: Colors.blue,).wh(context.screenWidth,50).p16(),
      );

  }
}
