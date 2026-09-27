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
      home: Scaffold(
        backgroundColor: Colors.white,
        
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              spacing:20,
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                
                CircleAvatar(radius: 50,backgroundColor:const Color.fromARGB(100,236, 241, 252),child: Icon(Icons.person,size: 60,color: Colors.blueAccent,),),
                Text("Welcome Back",style: TextStyle(fontWeight: .bold,fontSize: 20),),
                Text("Sign In To Continue"),
                
                Row(
                  spacing: 15,
                  children: [
                    
                    Expanded(child: MaterialButton(onPressed: (){},shape:Border.all(color:Colors.grey),padding:EdgeInsets.all(10),child: Row(spacing: 5,children: [Icon(Icons.email),Text("Continue With Email")],))),
                    Expanded(child: MaterialButton(onPressed: (){},shape: Border.all(color:Colors.grey),padding:EdgeInsets.all(10),child: Row(spacing: 5,children: [Icon(Icons.apple),Text("Continue With Apple")],))),
                  ],
                ),
                Row(
                  spacing: 15,
                  children: [
                    Expanded(child: Divider()),
                    Text("or"),
                    Expanded(child: Divider()),
                  ],
                ),
                TextField(decoration:InputDecoration(border:OutlineInputBorder(),hintText: "Email Address",prefixIcon: Icon(Icons.email))),
                TextField(decoration:InputDecoration(border: OutlineInputBorder(),hintText: "Password",prefixIcon: Icon(Icons.lock),suffixIcon: Icon(Icons.visibility,))),
                MaterialButton(onPressed: (){},minWidth:3000,color:Colors.blueAccent,child: Text("Login", style:TextStyle(color: Colors.white,fontWeight:.bold),),),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text("Don't have an account ?",style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(color: Colors.blueAccent,fontWeight: .bold)))
                  ],
                ),
                TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.blueAccent,fontWeight: .bold)))
              ]
            ),
          ),
        )
        
      ),
    );
  }
}
      