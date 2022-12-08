import 'package:flutter/material.dart';

class DailyMealsPage extends StatefulWidget {
  const DailyMealsPage({Key? key}) : super(key: key);

  @override
  State<DailyMealsPage> createState() => _DailyMealsPageState();
}

class _DailyMealsPageState extends State<DailyMealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Daily Meals"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const    SizedBox(
                height: 20,
              ),
            const Center(
              child:     Text("Thursday Meal Plan",
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
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("9:00 AM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("8 Egg Whites with 2 Piece of bread",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),

          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("12:00 AM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("1 Apple & 1 Spoon Peanut Butter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),
          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("3:00 PM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("Chicken Breast with Rice",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),
          Card(
            color: Colors.grey[300],
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("6:00 PM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("1.5 Scoop Whey Isolate",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),

          Card(
            
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("8:00 PM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("150g Salmon with Rice",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),

          Card(
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
      Text("10:00 PM",style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 10),
      Text("Dry Fruits (Almonds and Walnuts)",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
      
      ],),
    ],
  ),
)

          ),
          ],
        ),
      ),
    );
  }
}