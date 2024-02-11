import 'package:flutter/material.dart';
import '../home.dart';
Color color = Color.fromARGB(255, 43, 141, 46);
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 20,left: 20),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/background.png'))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('Tips',style: TextStyle(fontSize: 25,color: color),),
               const Text('encorague to',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                const Text('provide best',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                const Text('service .',
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
              const  Text('after reciving best servieces ,',
                style: TextStyle(fontSize: 15,)),
              const  Text('be happy and give a tip',
                style: TextStyle(fontSize: 15,)),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Start Giving Tips ->',
                    style: TextStyle(fontSize: 25,color: color,fontWeight: FontWeight.bold)),
                  ),
                ),
        
              ],),
        ),
      ),
    );
  }
}
