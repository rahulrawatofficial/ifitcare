

import 'package:flutter/material.dart';


class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fatherController = TextEditingController();
  TextEditingController fNoController = TextEditingController();
  TextEditingController motherController = TextEditingController();
  TextEditingController mNoController = TextEditingController();
  TextEditingController presentAController = TextEditingController();
  TextEditingController permanentAController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodController = TextEditingController();
  TextEditingController medicalController = TextEditingController();

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
                    controller: emailController,
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
                    controller: fatherController,
                    decoration: const InputDecoration(
                      labelText: "Hieght",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: motherController,
                    decoration:const InputDecoration(
                      labelText: "Weight",
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  
                  TextFormField(
                    controller: presentAController,
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
