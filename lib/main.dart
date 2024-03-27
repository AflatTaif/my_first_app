import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),

    );
  }

}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MysnackBar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.cyanAccent,
        title: Text('My app'),
        titleSpacing: 10,
        // centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        
        elevation: 10,
        shadowColor: Colors.black,

      ),

        body: Container(
          height: 250,
            width: 250,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(40),
          child: Image.network('https://scontent.fzyl1-1.fna.fbcdn.net/v/t39.30808-6/406142538_1093228788520677_281710329263979855_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeGhwjb-bJND4RjXNiSDQWKlkwGFbnlCHp-TAYVueUIen8Zs6OJqrminhdQYwNGztWBNoR0g1-I7MacZcMT6IKaB&_nc_ohc=jZ_6NdwDp2EAX9d6HuG&_nc_ht=scontent.fzyl1-1.fna&oh=00_AfBE3AIf3-HL0uh4jDu7EGGEVK1-l5lL6BlI5UiqxfJoSw&oe=66085A47'),
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.black, width: 10),
          ),

        ),



    );



  }

}

