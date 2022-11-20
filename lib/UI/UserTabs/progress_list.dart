import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressList extends StatefulWidget {
  const ProgressList({
    Key? key,
  }) : super(key: key);

  @override
  State<ProgressList> createState() => _ProgressListState();
}

class _ProgressListState extends State<ProgressList> {

  late ValueNotifier<double> valueNotifier;
  late final List<String> _items=["Water\n Reminder", "Exercise", "Cardio", "Watch Demo", "Update Goals"];

   @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(70.0);
  }

  @override
  Widget build(BuildContext context) {

    return Container(
                  height: 350,
                    color: Colors.transparent,
      child: ListView(children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'todayWorkout');
          },
          child: Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Today's Workout",style: TextStyle(fontWeight: FontWeight.bold),),
  Icon(Icons.check_circle_outline,color: Colors.green,),
  
  ],),
)

          ),
        ),

GestureDetector(
  onTap: (){
      Navigator.pushNamed(context, 'waterIntake');
    },
  child:   Card(
    
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child:   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:const [
    Text("Daily Water Intake",style: TextStyle(fontWeight: FontWeight.bold),),
    Text("3 / 10",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlue),),
    
    ],),
  )
  
          ),
),


        GestureDetector(
          onTap: (() {
            Navigator.pushNamed(context, 'dailyMeal');
          }),
          child: Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Daily Meals",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("2 / 6",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
  
  ],),
)

          ),
        ),

        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'stepsCount');
          },
          child: Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Steps Count",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("5500 Steps",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),
        ),


      ],)
    );
  }
}