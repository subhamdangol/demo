import 'package:demo/pages/dashboard.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => detailpageState();
}

class detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            Stack(
              children: [
                Container(
                  height: size.height/4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22"),
                ),
                Container(
                  height: size.height/4,
                  width: size.width,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.arrow_back,
                    color: Colors.white,size: 40,),
                  ),
                ),
                Positioned(
                  right: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.share,
                      color: Colors.white,size: 40,),
                  ),
                ),
                Container(
                  height: size.height/4,
                  child: Center(

                    child: Icon(Icons.play_circle_fill,
                      size: 60,
                      color: Colors.white,),
                  ),
                )
              ],
            ),
            SizedBox(height:15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("I am Batman",
              style: TextStyle(fontSize: 20),maxLines: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Director Name"),
                Text("02-02-2026")
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman,"
                  "Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman,Batman",),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Reload video", style: TextStyle(fontSize: 18),),
            ),
            DashboardState.verticalitem(size,
                "Me batman",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                "02,Feb 2026",
                "PCPS.com"),

            DashboardState.verticalitem(size,
                "Me batman",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                "02,Feb 2026",
                "PCPS.com"),

            DashboardState.verticalitem(size,
                "Me batman",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                "02,Feb 2026",
                "PCPS.com"),

            DashboardState.verticalitem(size,
                "Me batman",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                "02,Feb 2026",
                "PCPS.com"),

          ],
        ),
      ),
    );
  }
}

