import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helping_e_hand/ui/DonatedItems.dart';
import 'package:helping_e_hand/ui/EditDetails.dart';
import 'package:helping_e_hand/ui/Login.dart';
import 'package:helping_e_hand/ui/MyAddress.dart';
import 'package:helping_e_hand/ui/Raise.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);


  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
              color: Colors.white,
            ),
            height: 100,
            child: Center(
              child:Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 5, 10),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.green.shade400,
                      child: const Text("U",style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text('User Name',style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(fontSize: 18),color: Colors.black),textAlign: TextAlign.left,),
                  ),
                ],
              ),
            ),
          ),
          Container(height:0.5,color: Colors.green.shade50,),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //child: Text('My details',style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: const Icon(Icons.account_box_outlined,color: Colors.blueGrey,size: 30,)
                  ),
                ),
                Expanded(
                  flex : 8,
                  child: ListTile(
                    trailing:  const Icon(Icons.navigate_next_sharp,color: Colors.blueGrey,),
                    title:Text('My Profile',style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(fontSize: 22,color: Colors.blueGrey),),textAlign: TextAlign.start,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>EditDetails()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:5),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //child: Text('My details',style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: const Icon(Icons.home_filled,color: Colors.blueGrey,size: 30,)
                  ),
                ),
                Expanded(
                  flex : 8,
                  child: ListTile(
                    trailing:  const Icon(Icons.navigate_next_sharp,color: Colors.blueGrey,),
                    title:Text('My Addresses',style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(fontSize: 22,color: Colors.blueGrey),),textAlign: TextAlign.start,),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyAddress()),
                    );
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:5),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //child: Text('My details',style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: const Icon(Icons.widgets,color: Colors.blueGrey,size: 30,)
                  ),
                ),
                Expanded(
                  flex : 8,
                  child: ListTile(
                    trailing:  const Icon(Icons.navigate_next_sharp,color: Colors.blueGrey,),
                    title:Text('Donated Items',style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(fontSize: 22,color: Colors.blueGrey),),textAlign: TextAlign.start,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DonatedItems()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //child: Text('My details',style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: const Icon(Icons.monetization_on_rounded,color: Colors.blueGrey,size: 30,)
                  ),
                ),
                Expanded(
                  flex : 8,
                  child: ListTile(
                    trailing:  const Icon(Icons.navigate_next_sharp,color: Colors.blueGrey,),
                    title:Text('Raised Fund',style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(fontSize: 22,color: Colors.blueGrey),),textAlign: TextAlign.start,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Raise()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            //child: Text('My details',style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
            decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: const Icon(Icons.power_settings_new,color: Colors.blueGrey,size: 30,)
                  ),
                ),
                Expanded(
                  flex : 8,
                  child: ListTile(
                    trailing:  const Icon(Icons.navigate_next_sharp,color: Colors.blueGrey,),
                    title:Text('Sign out',style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(fontSize: 22,color: Colors.blueGrey),),textAlign: TextAlign.start,),
                    onTap: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Login()), (e) => false);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
