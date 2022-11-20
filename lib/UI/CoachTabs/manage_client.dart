import 'package:flutter/material.dart';

class ManageClient extends StatefulWidget {
  const ManageClient({Key? key}) : super(key: key);

  @override
  State<ManageClient> createState() => _ManageClientState();
}

class _ManageClientState extends State<ManageClient> {

 final List<String> _names = [
  "Rahul Rawat",
  "Aayush Pathania",
  "Ansu Ann Jacob",
  "Janhvi Amin",
  "Ashish Verma",
  "Neeraj Patel",
 ];

 final List<String> _desciption = [
  "Looking for fat loss and muscle building simultaneously",
  "Goal is to gain muscle mass and can only work thrice a week",
  "Wants to gain weight with a hardcore non-vegetarian diet as she is allergic to dairy products and pulses",
  "Only looking for yoga plans with a diet for maintaining weight",
  "Wants to loose weight within three months and can workout 6 days a week",
  "Just want loose weight with a vegetarian diet",
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.green,child:const Icon(Icons.sort),onPressed: (){},),
      appBar: AppBar(title:const Text("Manage Client"),
      backgroundColor: Colors.green,
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.person_add))
      ],
      ),
body: Padding(
  padding: const EdgeInsets.fromLTRB(5.0,20.0,5.0,5.0),
  child:   ListView.builder(itemCount:_names.length,itemBuilder: (context,index){
  
    return Column(
      children: [
        
        ListTile(
          leading:const CircleAvatar(
            child:const Icon(Icons.person,size: 40,),
            radius: 30,
            backgroundColor:  Colors.green,
          ),
          onTap: (){},
          title: Text(_names[index],style:const TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Padding(
            padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
            child: Text(_desciption[index]),
          ),
        ),
        Divider(),
      ],
    );
  }),
),
    );
    
  }
}