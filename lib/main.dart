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
            MysnackBar('Sent email', context);

          },
      ),  IconButton(
          icon: Icon(Icons.contact_emergency),
          onPressed: (){
            MysnackBar('Only for emergency', context);

          },
      ),

      ]




      ),
      body: Text('Hello'),
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
                currentAccountPicture: Image.network('https://lh3.googleusercontent.com/pw/AP1GczME1E1O8ShmAJQpanXo_SIvSRdr8JgVEzhYDaLyzqM318NmBD_GVYGkkW1E0q8xBqjwE3wgqIZXNMPyGsE6jDcXzOnnPlT--5wY3uWqOkGuF7wBuC7B5l3Hw4bOqBvkKXZ-oohox9hjfMjyNBIKebKzUPDDs2GSPtzznWR_kqIHRM1s_ZXgITHX8eldXivdjX6hhcGM0B4CdUK-sExqINxIIvxV1qSeuaN-aX8c9NyfcdoqGUROXX7hVw7_4d91BDJ79w13fTfV7uvQfLzL4GLjNZVhjcWMbcdYjHewwJd0WBKx55kQdpYWqVRD9wwPml06_IKAOE430U-8weRobXV0TZQJcc2S62F8TjRuE7lmXW-hAzz5_KNKnZcYGbcFy5yA9CA3B29PKb0lyY5RcH5T0dCMzGuz8rNIiZH0PQz3tnKDAE-mJVkWEFCakTOWW4LsAsVg6-oR2cM_BVP82wT3HQUjHIyX-cP2uLArkVT3VVHxLUw1aoqxnyPy4KlpNa_jcvu4-5mzIe_pk_9E84XmonTQwrG2MOqPwPLZ-pYV0Ax2x1H1FmQ06l_Yd1XSmwGb2ObiZ1t4wBcLp72aBzgFFk0VWOziP2YiuaGaJFRPpewL5U_04vyBzcISlyRDTX2LNRphSUmV2bLLxna_yuAiAGUzXbBUqT6PJS4xvnVCFkuBAhlTXYITKW1fV5xfTKO9wvUrCyfe6FWJFBZPHt-AiC1GZg_uo8Nz2YTCt5khh8FVScuuV-xOvSI4Px8PSn2ZfxhDZRLOUGuhWxqy0FihT3ZV9ihobRN14371siMiWF_x0Zn4KAG0WHRZ1Ibpg-cRF9cDh6aqvXFp4vxF3P5yQQTyK8CgYBDZQzQPvlJwM_ixcUw8JyF1fJnbORrNobSzTcx6saSzwAsGGEpp-ms=w641-h855-s-no-gm?authuser=0'),






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
    currentAccountPicture: Image.network('https://lh3.googleusercontent.com/pw/AP1GczME1E1O8ShmAJQpanXo_SIvSRdr8JgVEzhYDaLyzqM318NmBD_GVYGkkW1E0q8xBqjwE3wgqIZXNMPyGsE6jDcXzOnnPlT--5wY3uWqOkGuF7wBuC7B5l3Hw4bOqBvkKXZ-oohox9hjfMjyNBIKebKzUPDDs2GSPtzznWR_kqIHRM1s_ZXgITHX8eldXivdjX6hhcGM0B4CdUK-sExqINxIIvxV1qSeuaN-aX8c9NyfcdoqGUROXX7hVw7_4d91BDJ79w13fTfV7uvQfLzL4GLjNZVhjcWMbcdYjHewwJd0WBKx55kQdpYWqVRD9wwPml06_IKAOE430U-8weRobXV0TZQJcc2S62F8TjRuE7lmXW-hAzz5_KNKnZcYGbcFy5yA9CA3B29PKb0lyY5RcH5T0dCMzGuz8rNIiZH0PQz3tnKDAE-mJVkWEFCakTOWW4LsAsVg6-oR2cM_BVP82wT3HQUjHIyX-cP2uLArkVT3VVHxLUw1aoqxnyPy4KlpNa_jcvu4-5mzIe_pk_9E84XmonTQwrG2MOqPwPLZ-pYV0Ax2x1H1FmQ06l_Yd1XSmwGb2ObiZ1t4wBcLp72aBzgFFk0VWOziP2YiuaGaJFRPpewL5U_04vyBzcISlyRDTX2LNRphSUmV2bLLxna_yuAiAGUzXbBUqT6PJS4xvnVCFkuBAhlTXYITKW1fV5xfTKO9wvUrCyfe6FWJFBZPHt-AiC1GZg_uo8Nz2YTCt5khh8FVScuuV-xOvSI4Px8PSn2ZfxhDZRLOUGuhWxqy0FihT3ZV9ihobRN14371siMiWF_x0Zn4KAG0WHRZ1Ibpg-cRF9cDh6aqvXFp4vxF3P5yQQTyK8CgYBDZQzQPvlJwM_ixcUw8JyF1fJnbORrNobSzTcx6saSzwAsGGEpp-ms=w641-h855-s-no-gm?authuser=0'),






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
    )



    );



  }

}

