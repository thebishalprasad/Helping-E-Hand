import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_e_hand/SizeConfig.dart';
import 'package:helping_e_hand/ui/Donatae.dart';
import 'package:helping_e_hand/ui/Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(10),
    ),
        ),
        actions:  [
          IconButton(icon: Icon(Icons.notifications,color: Colors.green.shade400,), onPressed: (){},)
        ],
        automaticallyImplyLeading: false,
        elevation: 5,
        shadowColor: Colors.green.shade100,
        title:  Text("Helping E-Hand",style:TextStyle(color: Colors.green.shade400,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: page == 1 ? Donate(): page == 2? const Profile():SingleChildScrollView(child: Center(
        child: Column(
          children: [Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            height: SizeConfig.blockSizeVertical! * 2020,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Home.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
            const SizedBox(height: 15,),
            const Text('About Us', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.all(10),
              child: const Text('Welcome to Helping E-Hand! Our aim is to '
                  'help the people in need. In this huge population there '
                  'are so many people who want to help needy people but they dont'
                  ' get any platform. Through this application we are providing a platform'
                  ' to people where they can easily donate things like groceries,clothes, '
                  'money etc, Which will make the life of needy people easy.'
                  'We are aligned to connect the people and NGOs through this platform. '
                  'You can submit the details of the items you want to donate after that '
                  'your request will reach to the respective NGO. The NGO will pick up the'
                  ' item from your doorstep and will deliver it to the needy people. '
                  'You can also raise funds through this application,just fill up the amount and submit your details.',
                style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
        BottomNavigationBarItem(
          label: "Home",
            icon: Icon(Icons.home,color : page == 0 ? Colors.green.shade400:Colors.grey,)),
          BottomNavigationBarItem(
            label: "Donate/Raise",
            icon: Icon(Icons.widgets,color: page == 1 ? Colors.green.shade400:null,),
        ),
        BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle_rounded, color: page == 2 ? Colors.green.shade400:null,),
        ),
      ],
      onTap: (index){
         setState(() {
           page = index;
         });
      },),
    );
  }
}