import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TodayWorkoutPage extends StatefulWidget {
  const TodayWorkoutPage({Key? key}) : super(key: key);

  @override
  State<TodayWorkoutPage> createState() => _TodayWorkoutPageState();
}

class _TodayWorkoutPageState extends State<TodayWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DAILY WORKOUT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/workout.png',height: 200,width: 200,)),
      // const    Center(child:   Icon(Icons.sports_gymnastics,color: Colors.blue,size: 150,)),
        // const    Text("DAILY INTAKE",
              // style: TextStyle(color: Colors.black, fontSize: 33),),
          const    SizedBox(
                height: 40,
              ),
            Center(
              child: LinearPercentIndicator(
                        // width: 350.0,
                        lineHeight: 18.0,
                        percent: 0.60,
                        progressColor: Colors.green,
                      ),
            ),
            
            const    SizedBox(
                height: 20,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text("Monday"),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                //   child: Text("3 Glass"),
                // ),
                Text("Saturday"),
              ],
            ),
            const    SizedBox(
                height: 20,
              ),
            const Center(
              child:     Text("6 Day Workout Plan",
                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
            ),
            const    SizedBox(
                height: 30,
              ),
           const Divider(),
           Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Monday",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("Chest",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),

          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Tuesday",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("Back",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),
          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Wednesday",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("Shoulders",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),
          Card(
            color: Colors.grey[300],
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Thursday",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("Arms",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),
          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:const [
  Text("Friday",style: TextStyle(fontWeight: FontWeight.bold),),
  Text("Legs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
  
  ],),
)

          ),
          ],
        ),
      ),
    );
  }
}