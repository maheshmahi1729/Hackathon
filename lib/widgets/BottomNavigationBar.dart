import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/screens/homeScreen.dart';
import 'package:hackathon/screens/patient_screens/myDoctorScreen.dart';
import 'package:hackathon/screens/patient_screens/profileScreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: height * 0.065,
          width: width,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              offset: Offset(0, -1),
              color: Color(0xFFC5C5C5),
            ),
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (conext) => My_doctor()));
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Image.asset("assets/images/stethoscope.png"),
                      ),
                      Text(
                        "My Doctor",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.029,
                          color: Color(0xFF707070),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/divider.png"),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomeScreen()),
                        (route) => false);
                  },
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Icon(
                          Icons.home_outlined,
                          color: Color(0x80000000),
                        ),
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.029,
                          color: Color(0xFF707070),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Image.asset("assets/images/divider.png"),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()),
                        (route) => true);
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: width * 0.07,
                        color: Color(0xFF838383),
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.029,
                          color: Color(0xFF707070),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
