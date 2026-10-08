import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  horizontalitem(size, String title, url, date){
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left:10, right: 10, top: 8),
            height: size.height/5,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
            ),
            width: size.width/1.1,
            child :ClipRRect(
              borderRadius:BorderRadius.circular(20) ,
              child: Image.network(url,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(bottom:10,left: 20 ,
              child:Container(width: size.width/2,
                  child: Text(title, overflow: TextOverflow.ellipsis,maxLines: 2,
                    style: TextStyle(color: Colors.white),)
              )),
          Positioned(bottom:15,left: 250,
              child:Container(width: size.width/2,
                  child: Text(date, overflow: TextOverflow.ellipsis,maxLines: 2,
                    style: TextStyle(color: Colors.white),)
              )),
          Positioned(bottom:15,left: 250 ,
              child:Container(width: size.width/2,
                  child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
              )),
        ],
      ),
    );
  }

  verticalitem(size, String title, url, date,source){
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.network(
                      fit: BoxFit.cover,url,
                  ),
                ),
              ),
              Container(
                height: 150,
                width: 150,
                child: Center(
                  child: Icon(Icons.play_circle_fill_rounded,size: 50,
                    color: Colors.white,),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                width: size.width/2,
                child: Text(title,maxLines: 2,
                  overflow: TextOverflow.ellipsis,),
              ),
              Container(
                margin: EdgeInsets.all(15),
                width: size.width/2.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.red
                      ),
                      child: Text(source,style: TextStyle(color: Colors.white),),
                    ),
                    Text(date,style: TextStyle(color: Colors.black),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Container(
      child:Column (
        children: [
          //horizontal list data
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                //horizontalitem(size, String title, url, date){
                horizontalitem(size,
                    "I am Batman",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                    "02,Feb 2026"),
                horizontalitem(size,
                    "I am Vengence",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                    "02,Feb 2026"),
                horizontalitem(size,
                    "I am Batman",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                    "02,Feb 2026"),
              ],
            ),
          ),
          //vertical list data

          Container(
            height: size.height/1.65,
            child: SingleChildScrollView(

              child: Column(
                children: [
                  verticalitem(size,
                      "Me batman",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                      "02,Feb 2026",
                      "PCPS.com"),
                  verticalitem(size,
                      "I batman",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                      "02,Feb 2026",
                      "PCPS.com"),
                  verticalitem(size,
                      "Me batman",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                      "02,Feb 2026",
                      "PCPS.com"),
                  verticalitem(size,
                      "Me batman",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                      "02,Feb 2026",
                      "PCPS.com"),
                  verticalitem(size,
                      "Me batman",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10%22",
                      "02,Feb 2026",
                      "PCPS.com"),

                ],
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}