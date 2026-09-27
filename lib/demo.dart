import 'package:flutter/cupertino.dart';

class demopage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return demopageState();
  }
}
class demopageState extends State<demopage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello to flutter."),
    );
  }

}