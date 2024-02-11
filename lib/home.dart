import 'package:flutter/material.dart';
import 'main.dart';
Color solor = Color.fromARGB(255, 224, 221, 221);
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: solor,
      appBar: AppBar(
        backgroundColor: solor,
        leading:const Padding(
          padding:  EdgeInsets.only(left:16),
          child: Row(children: [
            Icon(Icons.account_box_sharp,size: 40,),
             
          ],),
        ),
        title:const Text('Hi Nassir'),
        actions:const [
          Padding(
            padding:  EdgeInsets.only(right:16),
            child: Icon(Icons.menu,size: 40,),
          ),

        ],
      ),
      body: Container(
        margin:const EdgeInsets.only(right: 16,left: 16,top: 22),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            balance(),
            data(),
            SizedBox(height: 15),
            Text('Recently Tips'),
            SizedBox(height: 15),
            team()
          ],),
        ),
      ),
    );
  }
}


Widget team(){
  return Container(
    margin:const EdgeInsets.only(top: 16),
    width: double.infinity,
    padding:const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54
        ),
  child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
    children: [
const Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text('Team Appux',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
  Text('aug 20 2024',style: TextStyle(fontSize: 10),),
],),
const Text('3D data data data',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
const Text('You have giving thanks to team appux',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
   const Row(children: [ CircleAvatar(radius: 15,child: Icon(Icons.account_circle,size: 20,),),
    CircleAvatar(radius: 15,child: Icon(Icons.account_circle,size: 20,),),
    CircleAvatar(radius: 15,child: Icon(Icons.account_circle,size: 20,),),
    CircleAvatar(radius: 15,child: Icon(Icons.account_circle,size: 20,),),],),
    Row(children: [
     const Text('Tipped to',style:  TextStyle( fontSize: 10),),
      Text('7 persones',style: TextStyle(color: color,fontSize: 10),),
    ],),
   

    ],)
  
  ],),
  );
}

Widget data (){
  return Container(
    margin:const EdgeInsets.only(top: 16),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Container(
        padding:const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54
        ),
        child:const Column(
          
          children: [
          CircleAvatar(backgroundImage: AssetImage('assets/1.png')),
          Text('  Total Tips  ',style: TextStyle(color: Colors.grey),),
          Text('1223\$',style: TextStyle(fontSize: 25),),
        ],),
      ),
      Container(
        padding:const EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white54
        ),
        child:const Column(children: [
          CircleAvatar(backgroundImage: AssetImage('assets/2.png')),
          Text('Total Transfers',style: TextStyle(color: Colors.grey),),
          Text('5223\$',style: TextStyle(fontSize: 25),),
        ],),
      ),
    ]),
  );
}

Widget balance(){
  return Container(
  height: 220,
  width: double.infinity,
  decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(25)),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text('Your Balance in USD\$',style: TextStyle(fontSize: 25,color: Colors.white70)),
    Text('150.00',style: TextStyle(fontSize: 45,color: Colors.white70),),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      InkWell(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 140, 167) ,
             borderRadius: BorderRadius.circular(10)),
          child: Text('Give Tip',style: TextStyle(fontSize: 20),),),
      ),
      Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color:  Colors.white70 ,
           borderRadius: BorderRadius.circular(10)),
        child: Text('Transfer',style: TextStyle(fontSize: 20)),),
    ],)
  ],),
  );
}