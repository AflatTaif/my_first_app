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
  static ButtonStyle buttonStyle= ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
    foregroundColor: Colors.red,
    shadowColor: Colors.grey,



  );

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

        //button

      ),

        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //
        //     TextButton(onPressed: (){
        //       MysnackBar('I am a text button', context);
        //     },
        //
        //         child: Text('Text Button')),
        //     ElevatedButton(onPressed: (){
        //       MysnackBar('I am a text button', context);
        //       },
        //         child: Text('Elevated Button'), style: buttonStyle,),
        //     OutlinedButton(onPressed:  (){
        //       MysnackBar('Im outline button', context);
        //       },
        //         child: Text('outline button')),
        //   ],
        // ),


      // ROW and Colum


        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network('https://cdn.pixabay.com/photo/2024/03/20/06/18/ai-generated-8644732_960_720.jpg'),


            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,

            ),


            Container(
              height: 100,
              width: 100,
              child: Image.network('https://cdn.pixabay.com/photo/2024/03/20/06/18/ai-generated-8644732_960_720.jpg'),

            ),  Container(
              height: 100,
              width: 100,
              child: Image.network('https://cdn.pixabay.com/photo/2024/03/20/06/18/ai-generated-8644732_960_720.jpg'),

            ), Container(
              height: 100,
              width: 100,
              child: Image.network('https://cdn.pixabay.com/photo/2024/03/20/06/18/ai-generated-8644732_960_720.jpg'),

            ),


          ],

        ),




    );



  }

}

