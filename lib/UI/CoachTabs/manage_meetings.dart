import 'package:flutter/material.dart';

class ManageMeetings extends StatefulWidget {
  const ManageMeetings({Key? key}) : super(key: key);

  @override
  State<ManageMeetings> createState() => _ManageMeetingsState();
}

class _ManageMeetingsState extends State<ManageMeetings> {

 final List<String> _names = [
  "Rahul Rawat",
  "Aayush Pathania",
  "Ansu Ann Jacob",
  "Janhvi Amin",
  "Ashish Verma",
  "Neeraj Patel",
 ];

 final List<String> _desciption = [
  "4:30 pm, 10-23-2022",
  "6:00 pm, 10-24-2022",
  "4:00 pm, 10-25-2022",
  "1:30 pm, 10-28-2022",
  "2:30 pm, 11-02-2022",
  "2:00 pm, 11-04-2022",
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor:Colors.green,child:const Icon(Icons.sort),onPressed: (){},),
      appBar: AppBar(title:const Text("Manage Meetings"),
      backgroundColor: Colors.green,
      
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
          trailing:const Icon(Icons.update),
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