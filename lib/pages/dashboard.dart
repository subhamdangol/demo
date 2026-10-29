import 'package:demo/pages/detailpage.dart';
import 'package:flutter/material.dart';

import '../contoller/apicall.dart';
import '../model/news.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {

  horizontalitem(size, String title, url, date){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute<void>(
              builder: (context) => detailpage()
          ),
        );

      },
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

  static verticalitem(size, String title, url, date,source){
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
  Future<news?>? futurenewsdata;
  @override
  void initState() {
    super.initState();
    futurenewsdata = Apicall.getnewsapidata();
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
              children:
              [
                FutureBuilder(future: futurenewsdata,builder: (context, AsyncSnapshot<news?>snapshot){
                  switch (snapshot.connectionState){
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(child:CircularProgressIndicator(),);
                    case ConnectionState.active:
                    case ConnectionState.done:
                      if(snapshot.hasData){
                        //ui
                        var data = snapshot.data;
                        return Column(
                          children: [
                            Container(
                              height: size.height/4.5,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount:  data!.articles!.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return horizontalitem(size,
                                        data.articles![index].title!,
                                        data.articles![index].urlToImage,
                                        data.articles![index].publishedAt);
                                  }
                              ),
                            ),
                            Container(
                              height: size.height/1.65,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: data.articles!.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return verticalitem(size,
                                        data.articles![index].title!,
                                        data.articles![index].urlToImage,
                                        data.articles![index].publishedAt!.split("T")[0],
                                        data.articles![index].source!.name!
                                    );
                                  }
                              ),
                            ),

                          ],
                        );
                      }else{
                        return Center(child: Text("No Data"),);
                      }
                  }
                }),






              ],
            ),
        ),
    );
  }
}