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
        actions: [
      IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        MysnackBar('Search Here', context);
        // Add your search logic here
      },
    ),
      IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        MysnackBar('Showing notification', context);
      // Add your notifications logic here
      },
      ),
      IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        MysnackBar('Settings here', context);
      // Add your settings logic here
      },
      ),
      IconButton(
        icon: Icon(Icons.email),
        onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Message has been send'),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 1),
                  ),
                );

          },
      ),
          IconButton(onPressed: (){
            showDialog(context: context, builder:(context)
            {
              return AlertDialog(
                title: Text('Emergency alert'),
                content: Text('Emergency alert spoted'),
                backgroundColor: Colors.red,

              );
            },);


          },
          icon: Icon(Icons.emergency))



      ],




      ),

        floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: (){
          MysnackBar('Floating action', context);

        },
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

        ],


        onTap: (int index){
          if(index==0){
          MysnackBar('this is my home tab', context);
          }
          if(index==1){
            MysnackBar('this is my contact tab', context);
          }
          if(index==2){
            MysnackBar('this is my profile tab', context);
          }
        }


      ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: UserAccountsDrawerHeader(

                decoration: BoxDecoration(color: Colors.cyanAccent),
                accountEmail: Text('taifur@gmail.com'),
                accountName: Text('Taifur Rahaman'),
                currentAccountPicture: Image.network('https://scontent.fzyl1-1.fna.fbcdn.net/v/t39.30808-6/425425695_1131432544700301_3335065903260935136_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEhBx2NW9RTed8hP3uGGB_EL0HuhdyhNqYvQe6F3KE2plbApzUU3P-mwOVMdKPcRf8QrvP8vWXq19HTFMel84-e&_nc_ohc=cDmHx0XYC6wAX9GpXsZ&_nc_ht=scontent.fzyl1-1.fna&oh=00_AfB_Mcyr4OVq3A43FiILI2FxPkwCNu5GiOhZIEKYaPUcEw&oe=6608095D',
                  height: 300,
                  width: 100,
                )


              )

                  


              ),
              ListTile(leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                MysnackBar('Home here', context);
                }

              ),
              ListTile(leading: Icon(Icons.phone),
                title: Text('Contact'),
                  onTap: (){
                    MysnackBar('Contact here', context);
                  }
              ),
              ListTile(leading: Icon(Icons.person),
                title: Text('Profile'),
                  onTap: (){
                    MysnackBar('Profile here', context);
                  }),
              ListTile(leading: Icon(Icons.explore),
                title: Text('Blogs'),
                  onTap: (){
                    MysnackBar('Blogs here', context);
                  }
              ),
              ListTile(leading: Icon(Icons.more),
                title: Text('About'),
                  onTap: (){
                    MysnackBar('About here', context);
                  }
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
    child: ListView(
    children: [
        DrawerHeader(child: UserAccountsDrawerHeader(

        decoration: BoxDecoration(color: Colors.cyanAccent),
    accountEmail: Text('taifur@gmail.com'),
    accountName: Text('Taifur Rahaman'),
            currentAccountPicture: Image.network('https://scontent.fzyl1-1.fna.fbcdn.net/v/t39.30808-6/425425695_1131432544700301_3335065903260935136_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEhBx2NW9RTed8hP3uGGB_EL0HuhdyhNqYvQe6F3KE2plbApzUU3P-mwOVMdKPcRf8QrvP8vWXq19HTFMel84-e&_nc_ohc=cDmHx0XYC6wAX9GpXsZ&_nc_ht=scontent.fzyl1-1.fna&oh=00_AfB_Mcyr4OVq3A43FiILI2FxPkwCNu5GiOhZIEKYaPUcEw&oe=6608095D',
              height: 300,
              width: 100,
            )




    )




    ),
    ListTile(leading: Icon(Icons.home),
    title: Text('Home'),
    onTap: (){
    MysnackBar('Home here', context);
    }

    ),
    ListTile(leading: Icon(Icons.phone),
    title: Text('Contact'),
    onTap: (){
    MysnackBar('Contact here', context);
    }
    ),
    ListTile(leading: Icon(Icons.person),
    title: Text('Profile'),
    onTap: (){
    MysnackBar('Profile here', context);
    }),
    ListTile(leading: Icon(Icons.explore),
    title: Text('Blogs'),
    onTap: (){
    MysnackBar('Blogs here', context);
    }
    ),
    ListTile(leading: Icon(Icons.more),
    title: Text('About'),
    onTap: (){
    MysnackBar('About here', context);
    }
    ),
    ],
    ),
    ),

        body: Center(
          child: Text('Taifur Rahaman'),

        ),



    );



  }

}

