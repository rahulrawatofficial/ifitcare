import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ifitcare/UI/UserTabs/progress_list.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';


class WorkoutPage extends StatefulWidget {
  const WorkoutPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {

  late ValueNotifier<double> valueNotifier;
  late final List<String> _items=["Water\n Reminder", "Exercise", "Cardio", "Watch Demo", "Update Goals"];
final List<Icon> _itemsIcon=[
  const Icon(Icons.water_drop_outlined),
 const Icon(Icons.sports_gymnastics_outlined),
 const Icon(Icons.run_circle_outlined),
 const Icon(Icons.video_library_outlined),
 const Icon(Icons.update),
];

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(70.0);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(
          height: 60,
        ),
        Center(
          child: SimpleCircularProgressBar(
            valueNotifier: valueNotifier,
    progressColors:const  [
          Colors.cyan,
          Colors.green,
          Colors.amberAccent,
          Colors.redAccent,
          Colors.purpleAccent
    ],
    backColor: Colors.blueGrey,
),
        ),
const SizedBox(
          height: 30,
        ),
const Center(child:  Text("Daily Tracker",style: TextStyle(fontWeight: FontWeight.bold),)),
const SizedBox(
          height: 30,
        ),
        Container(

                      height: 100,

                        color: Colors.transparent,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _items.length,
              itemBuilder: (context, index){
                return Container(
                  height: 90,
                  width: 130,
                    color: Colors.transparent,
                  child: Card(
                    
                    child: Center(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _itemsIcon[index],
                        Text(_items[index],style:const TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      ],
                    )),
                  ),
                );
              },
          ),
        ),
    const   Padding(
         padding:  EdgeInsets.all(20.0),
         child:  Center(child: Text("Daily Progress",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
       ),
        ProgressList(),
      ],
    );
  }
}

