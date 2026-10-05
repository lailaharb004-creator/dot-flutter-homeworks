import 'package:flutter/material.dart';
import 'package:flutter_application_15/logic.dart';
import 'package:provider/provider.dart';


class TodoPage extends StatefulWidget{
  TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // TextEditingController ctr=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
      var x =context.watch<TodoProvider>();
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 242, 242),
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            spacing: 10,
            children: [
              Text("My Todo" , style: TextStyle(fontSize: 30, fontWeight: .bold),),
              Text("Small steps , big progress"),
              Row(
                spacing: 20,
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  SizedBox(
                    width: 300,
                    child: TextField(
                      controller:x.ctr,
                      decoration: InputDecoration(hintText: "Add a new todo ..." , border: OutlineInputBorder(borderRadius: .circular(10) ), filled: true, fillColor: Colors.white),
                      
                      ),
                  ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: .circular(10),
                          color: Colors.green,
                        ),
                        child: IconButton(
                          onPressed: (){
                            x.add(x.ctr.text);
                            x.ctr.clear();
                          },
                        color: Colors.white,
                        icon: Icon(Icons.add),
                        ),
                      ),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Text("Your Tasks" ,style: TextStyle(fontWeight: .bold),),
                  Text("${x.tasks.length} tasks"),
                ],
              ),
              
              ...context.read<TodoProvider>().tasks.asMap().entries.map((entry){
            return Container(
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                  ),
                  child: Row(
                    children: [
                      Checkbox(value: x.checkList[entry.key], onChanged: (v){
                      context.read<TodoProvider>().check(entry.key);
                      }),
                      Text(entry.value),
                      Spacer(),
                      IconButton(onPressed: (){
                        context.read<TodoProvider>().delete(entry.key);
                      }, icon: Icon(Icons.delete_outline), color: Colors.red,)
                    ],
                  ),
                );
              },
              ),
            ],
          
          ),
        )
        








      );
  }
}