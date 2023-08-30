
import 'package:flutter/material.dart';
class DonatedItems extends StatefulWidget {
  const DonatedItems({Key? key}) : super(key: key);

  @override
  _DonatedItems createState() => _DonatedItems();
}

class _DonatedItems extends State<DonatedItems> {
  get data => null;

  get prefs => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_new,color: Colors.green.shade400,), onPressed: () {Navigator.pop(context) ; },),
          elevation: 5,
          shadowColor: Colors.green.shade100,
          title:  Text("Donated Items",style:TextStyle(color: Colors.green.shade400,fontSize: 25,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
        ),
        body: const SafeArea(child: Center(child: Text('Here All Donated items will be displayed',style: TextStyle(fontSize: 25, color: Colors.blueGrey,fontWeight:FontWeight.bold),))
        ),

    );
  }
}
