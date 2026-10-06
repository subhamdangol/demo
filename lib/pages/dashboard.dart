import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
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
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(bottom:10,left: 20 ,
                        child:Container(width: size.width/2,
                            child: Text("I am vengeance. I am the night. I am Batman!", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250,
                        child:Container(width: size.width/2,
                            child: Text("02-02-2026", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250 ,
                        child:Container(width: size.width/2,
                            child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
                        )),
                  ],
                ),
                Stack(
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
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(bottom:10,left: 20 ,
                        child:Container(width: size.width/2,
                            child: Text("I am vengeance. I am the night. I am Batman!", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250,
                        child:Container(width: size.width/2,
                            child: Text("02-02-2026", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250 ,
                        child:Container(width: size.width/2,
                            child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
                        )),
                  ],
                ),
                Stack(
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
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(bottom:10,left: 20 ,
                        child:Container(width: size.width/2,
                            child: Text("I am vengeance. I am the night. I am Batman!", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250,
                        child:Container(width: size.width/2,
                            child: Text("02-02-2026", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250 ,
                        child:Container(width: size.width/2,
                            child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
                        )),
                  ],
                ),
                Stack(
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
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(bottom:10,left: 20 ,
                        child:Container(width: size.width/2,
                            child: Text("I am vengeance. I am the night. I am Batman!", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250,
                        child:Container(width: size.width/2,
                            child: Text("02-02-2026", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250 ,
                        child:Container(width: size.width/2,
                            child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
                        )),
                  ],
                ),
                Stack(
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
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxF7q_hWWmaRtboKkoTHfhz9sKncOA5ilmhRwnO9jlJg&s=10",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Positioned(bottom:10,left: 20 ,
                        child:Container(width: size.width/2,
                            child: Text("I am vengeance. I am the night. I am Batman!", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250,
                        child:Container(width: size.width/2,
                            child: Text("02-02-2026", overflow: TextOverflow.ellipsis,maxLines: 2,
                              style: TextStyle(color: Colors.white),)
                        )),
                    Positioned(bottom:15,left: 250 ,
                        child:Container(width: size.width/2,
                            child: Icon(Icons.play_circle, color: Colors.white,size: 30,)
                        )),
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    ),
    );
  }
}