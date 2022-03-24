import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Cars",style: TextStyle(color: Colors.red,fontSize: 24)),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.notifications_none,color: Colors.red)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_cart,color: Colors.red)),
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _singleTab(type: true,text: "All"),
                    _singleTab(type: false,text: "Lexus"),
                    _singleTab(text: "Tesla"),
                    _singleTab(text: "Mercedes"),
                    _singleTab(text: "BMW")

                  ],
                ),
              ),
              SizedBox(height: 25),
              makeItem(image: "assets/images/tesla.jpg",text: "Tesla",type: "Electirc",cost: "100000 euro"),
              makeItem(image: "assets/images/lexus.png",text: "Lexus 2022",type:"Hydrogen",cost: "699900 euro"),
              makeItem(image: "assets/images/lexus.jpg",text: "Lexus",type: "Dizel",cost: "100 000 dollar"),
              makeItem(image: "assets/images/benz.jpg",text: "EQS",type: "Electric",cost: "80000 euro"),
              makeItem(image: "assets/images/eqs.jpg",text: "EQS",type: "Hybrid",cost: "200000 dollar"),





            ],
          ),
        ),
      )
    );
  }
}
Widget makeItem({String image="",String text="",String type="",String cost=""}){
  return Container(
    height: 250,
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0,15)
        )
      ]
    ),
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.2),
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.3),
          ]
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(

            children: [
              Text(text,style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Text(type,style: TextStyle(color: Colors.red,fontSize: 23)),

            ],
          ),
          SizedBox(height: 10),
          Text(cost,style: TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Colors.white),),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    ),

  );
}

Widget _singleTab({bool type=false,text}){
  return AspectRatio(
      aspectRatio: 2.2/1,
    child: Container(
      decoration: BoxDecoration(
        color: type? Colors.red:Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(text,style: TextStyle(fontSize: type?21:17),),
      ),
    ),
  );

}
