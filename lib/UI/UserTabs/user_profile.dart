

import 'package:flutter/material.dart';


class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  TextEditingController fNameController = TextEditingController(text: "Ashish");
  TextEditingController lNameController = TextEditingController(text: "Kumar");
  TextEditingController phoneController = TextEditingController(text: "2264939020");
  TextEditingController dobController = TextEditingController(text: "12-25-1999");
  TextEditingController genderController = TextEditingController(text: "Male");
  TextEditingController emailController = TextEditingController(text: "v_ashish139992@gmail.com");
  TextEditingController weightController = TextEditingController(text: "180lb");
  TextEditingController heightController = TextEditingController(text: "5' 11");
  TextEditingController addressController = TextEditingController(text: "627 Haig St. London, ON");
  TextEditingController bloodController = TextEditingController(text: "B+");

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.grey[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const <Widget>[
                     Padding(
                       padding: EdgeInsets.all(20.0),
                       child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/man.png"),
                          backgroundColor: Color(0xFF444B54),
                          radius: 70,
                        ),
                     ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                    
                    controller: fNameController,
                    decoration:const InputDecoration(
                      
                      labelText: "First Name",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: lNameController,
                    decoration:const InputDecoration(
                      labelText: "Last Name",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: phoneController,
                    decoration:const InputDecoration(
                      prefix:
                          Text("(+1) ", style: TextStyle(color: Colors.black)),
                      labelText: "Phone Number",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: <Widget> [
                  //     TextFormField(
                  //       controller: dobController,
                  //       decoration:const InputDecoration(
                  //         labelText: "Date of birth",
                  //         border: UnderlineInputBorder(),
                  //       ),
                  //     ),
                  //     TextFormField(
                  //       controller: genderController,
                  //       decoration:const InputDecoration(labelText: "Gender"),
                  //     ),
                  //   ],
                  // ),
                  TextFormField(
                    controller: heightController,
                    decoration: const InputDecoration(
                      labelText: "Hieght",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: weightController,
                    decoration:const InputDecoration(
                      labelText: "Weight",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  
                  TextFormField(
                    controller: addressController,
                    decoration:const InputDecoration(
                      labelText: "Address",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: bloodController,
                    decoration:const InputDecoration(
                      labelText: "Blood Group",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                    ],
                  ),
                )
              ],
            ),
          ),
          // Row(
          //         children: <Widget>[
          //           Expanded(
          //             child: PhysicalModel(
          //               color:const Color(0xFF444B54),
          //               child: MaterialButton(
          //                 child: const Text(
          //                   "Save",
          //                   style: TextStyle(
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //                 onPressed: () {
          //                   // updateInfo();
          //                 },
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
        ],
      ),
    );
  }
}
