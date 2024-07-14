import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
       appBar: AppBar(
        backgroundColor: Color(0xffa47777),
        title: Text("whatsapp",style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),),
        actions: [
         IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white.withOpacity(.7),)),
         IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white.withOpacity(.7),))
               ],
               bottom:
               
                TabBar(
                  unselectedLabelColor: Colors.white.withOpacity(.7),
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.white,
                  tabs:
               [
                Tab(
                  icon: Icon(Icons.camera_alt)
                ),
                Tab(
                  child: Text("CHATS"),
                ),
                Tab(
                  child: Text("STORY"),
                ),
                Tab(
                  child: Text("CALL"),
                )
               ] ),
       ),
       body: TabBarView(children: 
       [
        Text("1at tab"),
        ListView.builder(itemCount: 10, itemBuilder: (context, index) {

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHugkaBBV-NE3rhCqe25vkcko-hcxzduZYpA&s"),
              
            ),
            title: Text("Rimon chakma",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("hi there! how are you",style: TextStyle(color: Colors.black.withOpacity(.7)),),
            trailing: Column(
              children: [
                Text("12.00 AM",style: TextStyle(
                  color: Colors.black
                ),),
                Container(
                  height: 20,
                  width: 20,
                  child: Center(child: Text("5",style: TextStyle(color: Colors.white),)),
                  
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 148, 82, 77),
                    shape: BoxShape.circle,

                  ),

                )
               
              ],
            ),
          );
        },),
        Text("3rd tab"),
        Text("4th tab"),
       ]
       ),
      ),
    );
  }
}