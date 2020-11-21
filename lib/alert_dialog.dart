import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlertDialog_Page extends StatefulWidget {
  @override
  _AlertDialog_PageState createState() => _AlertDialog_PageState();
}

class _AlertDialog_PageState extends State<AlertDialog_Page> {

      showExitPopUp(){
            return showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Confim"),
                    content: Text("Do you wnant to exit this app"),
                    actions: <Widget> [

                      RaisedButton(
                        child: Text("No"),
                          color: Colors.lightGreen,
                          onPressed: (){

                          Navigator.of(context).pop();


                      }),
                      RaisedButton(
                          child: Text("Yes"),
                          color: Colors.redAccent,
                          onPressed: (){
                            SystemNavigator.pop();

                          }),

                    ],

                  );
                }

            );

        
      }


  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: (){
      print("back button pressed");
      showExitPopUp();
    },

      child: Scaffold(
        appBar: AppBar(
          title: Text("alert dialog"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [




            Center(
              child: Column(
                children: [
                  Container(

                    child:
                    RaisedButton(
                        color: Colors.redAccent,
                        child: Text("Show Alert Dialog"),
                        onPressed: ()=>showAlertDialog(context)


                    )
                    ,

                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Column(
              children: [
                Container(
                  child:
                  RaisedButton(onPressed: ()=>ShowAlertDialogx(context) ,
                    color: Colors.amber,
                    child: Text("Dialog View"),

                  ),



                ),
              ],
            ),


          ],


        ),
      ),









    );
  }
}




showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed:  () {},
  );
  Widget crossBtn = FlatButton(
    child: Text("Cross"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
      crossBtn,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}


ShowAlertDialogx(BuildContext context){


  Widget CancelBtn = RaisedButton(onPressed: ()=>{

  },
    color: Colors.red,


    child: Text("Dare"),

  );

  Widget Confirm = RaisedButton(onPressed: ()=>{

  },
    color: Colors.green,


    child: Text("Truth"),

  );

  AlertDialog dialog = AlertDialog(

    title: Text(" Are You Ready..?"),
    content: Text(" hello Honey Bunny.. Fuck You man..!"),
    actions: [

      CancelBtn,
      Confirm,


    ],





  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return dialog;
    },
  );
}