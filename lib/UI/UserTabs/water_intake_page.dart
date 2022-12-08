import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WaterIntakePage extends StatefulWidget {
  const WaterIntakePage({Key? key}) : super(key: key);

  @override
  State<WaterIntakePage> createState() => _WaterIntakePageState();
}

class _WaterIntakePageState extends State<WaterIntakePage> {
  late double waterPercentage;
  add(){
    setState(() {
                waterPercentage=waterPercentage+0.1;
                print(waterPercentage);
              });
  }

  @override
  void initState() {
     waterPercentage=0.3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DAILY WATER INTAKE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(child: Image.asset('assets/images/water.png',height: 200,width: 200,)),
      // const    Center(child:   Icon(Icons.water_drop_outlined,color: Colors.blue,size: 150,)),
        // const    Text("DAILY INTAKE",
              // style: TextStyle(color: Colors.black, fontSize: 33),),
          const    SizedBox(
                height: 60,
              ),
            Center(
              child: LinearPercentIndicator(
                        // width: 350.0,
                        lineHeight: 18.0,
                        percent: waterPercentage,
                        progressColor: Colors.green,
                      ),
            ),
            const    SizedBox(
                height: 20,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text("0 Glass"),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                  
                //   child: Text(" Glass"),
                // ),
                Text("10 Glass"),
              ],
            ),
            const    SizedBox(
                height: 40,
              ),
           const Divider(),
           const Padding(
              padding:  EdgeInsets.all(8.0),
              child:     Text("You still need to drink 9 more glass of water to complete your daily goal of your water intake",
                style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w600,),),
            ),
            const    SizedBox(
                height: 100,
              ),
            Center(child: CupertinoButton(child: Text("Drink and Update"),color: Colors.blue, onPressed: add)),
          ],
        ),
      ),
    );
  }
}