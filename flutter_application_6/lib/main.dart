import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFF5f5edc),
        primaryIconTheme: IconThemeData(
          color: Colors.white
        ),
        
        textTheme: TextTheme(
        bodyLarge: TextStyle(color:Color(0XFF223b5a),fontWeight: .bold),
        bodyMedium: TextStyle(color: Colors.grey),
        titleMedium:TextStyle(color:Colors.white, fontWeight: .bold,fontSize: 20),
        titleSmall: TextStyle(color:Colors.white, fontWeight: .bold,fontSize: 10),
        )
      ),
      home:HomePage()
      
      
    );
    
  }
}
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        
        appBar: AppBar(
      
          backgroundColor: Theme.of(context).primaryColor,
          leading: Icon(Icons.menu_book ,color: Theme.of(context).primaryIconTheme.color,),
          title: Text("My Notes",style:Theme.of(context).textTheme.titleMedium),
          actions: [Icon(Icons.more_vert ,color: Theme.of(context).primaryIconTheme.color,)],
        ),
        body: 
        
        SingleChildScrollView(
          child: Column(
            
            spacing: 8,
            children: [
              Padding(padding: .all(8)),
              SizedBox(height: 5,),
              Container(
                width: 380,
                height: 180,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: .circular(10),
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .start,
                          children: [
                            
                            Text("Small Steps", style: Theme.of(context).textTheme.titleMedium,),
                            Text("every day lead to " , style: Theme.of(context).textTheme.titleMedium,),
                            Text("big results", style: Theme.of(context).textTheme.titleMedium,),
                            Row(
                              spacing: 5,
                              children: [
                                Text("Keep going", style: Theme.of(context).textTheme.titleSmall,),
                                Icon(Icons.rocket_launch,color: Theme.of(context).primaryIconTheme.color,)
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .center,
                          children: [
                          Align(alignment: .bottomRight,child: Image.asset("assets/books.png",width: 100,height: 100,))
                          ]
                        
                        ),
                      )
                      
                    ],
                  ),
                ),
                    
                    
                    
              
                  
                ),
              SizedBox(height: 5,),
                SizedBox(width: 380,child: Text("Add a New Note", style:Theme.of(context).textTheme.bodyLarge,)),
                SizedBox(width: 380,child: TextField(decoration:InputDecoration(hintText: "Title" , hintStyle: Theme.of(context).textTheme.bodyMedium,border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),prefixIcon: Icon(Icons.note_alt),alignLabelWithHint: true,),)),
                SizedBox(width: 380,child: TextField(maxLines: 3,decoration:InputDecoration(hintText: "Write your note here ...", hintStyle: Theme.of(context).textTheme.bodyMedium ,border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),alignLabelWithHint: true,),)),
                MaterialButton(onPressed: (){},minWidth:380,shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),color: Theme.of(context).primaryColor,padding: EdgeInsets.all(10),child: Text("Add Note", style: Theme.of(context).textTheme.titleMedium,),),
                Row(
                  
                  children: [
                    Padding(padding:EdgeInsets.symmetric(horizontal: 8)),
                    Expanded(flex:4,child: Text("Your Notes" ,style: Theme.of(context).textTheme.bodyLarge,)),
                    Expanded(flex:1,child: Text("3 notes"))
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFe6f0fc),
                    border: Border(left: BorderSide(width: 10,color: Color(0XFF5194fa))),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 380,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  child: Row(
                        
                    crossAxisAlignment: .center,
                    mainAxisAlignment: .spaceAround,
                    children: [
                      
                      Column(children: [Icon(Icons.description ,color: Color(0XFF5194fa),), ],
                      ),
                      Column(
                        crossAxisAlignment: .start,
                          children: [
                            Text("Learn Flutter", style: Theme.of(context).textTheme.bodyLarge,),
                            Text("Practice Widgets and build real apps.")
                          ],
                        ),
                      Column(children: [Icon(Icons.more_vert)],)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFe8f3ef),
                    border: Border(left: BorderSide(width: 10,color: Color(0XFF6cb49b))),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 380,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  child: Row(
                        
                    crossAxisAlignment: .center,
                    mainAxisAlignment: .spaceAround,
                    children: [
                      
                      Column(children: [Icon(Icons.description,color: Color(0XFF6cb49b)), ],
                      ),
                      Column(
                        crossAxisAlignment: .start,
                          children: [
                            Text("Learn Flutter",style: Theme.of(context).textTheme.bodyLarge,),
                            Text("Practice Widgets and build real apps.")
                          ],
                        ),
                      Column(children: [Icon(Icons.more_vert)],)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFfdf0e7),
                    border: Border(left: BorderSide(width: 10,color: Color(0XFFf5a33e))),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  width: 380,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  child: Row(
                        
                    crossAxisAlignment: .center,
                    mainAxisAlignment: .spaceAround,
                    children: [
                      
                      Column(children: [Icon(Icons.description,color: Color(0XFFf5a33e)), ],
                      ),
                      Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text("Learn Flutter", style: Theme.of(context).textTheme.bodyLarge,),
                            Text("Practice Widgets and build real apps.")
                          ],
                        ),
                      Column(children: [Icon(Icons.more_vert)],)
                    ],
                  ),
                )
            ],
            
          ),
        ),
        
        
      );
  }

}
      