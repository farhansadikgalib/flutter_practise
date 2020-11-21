import 'package:flutter/material.dart';

class form_validation extends StatefulWidget {
  @override
  _form_validationState createState() => _form_validationState();
}

class _form_validationState extends State<form_validation> {
  var nameCtrl = TextEditingController();
  var idCtrl = TextEditingController();
  var emailCtrl = TextEditingController();
  var phoneCtrl = TextEditingController();
  var addressCtrl = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var name, id, email, phone, address;

  void handleSubmit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      print("name is: ${this.name}");
      print("address is: ${this.address}");
    }
  }

  void handleReset() {
    nameCtrl.clear();
    idCtrl.clear();
    emailCtrl.clear();
    phoneCtrl.clear();
    addressCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("form validation"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: nameCtrl,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Enter Your Name'),
                    validator: (value) {
                      if (value.length == 0) return ("Name is required");
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  TextFormField(
                    controller: idCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Enter Your ID'),
                    validator: (value) {
                      if (value.length == 0) return ("ID is required");
                    },
                    onSaved: (value) {
                      this.id = value;
                    },
                  ),
                  TextFormField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: 'Enter Your Email'),
                    validator: (value) {
                      if (value.length == 0) return ("Email is required");
                    },
                    onSaved: (value) {
                      this.email = value;
                    },
                  ),
                  TextFormField(
                    controller: phoneCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Enter Your Phone'),
                    validator: (value) {
                      if (value.length == 0) return ("Phone is required");
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
                  ),
                  TextFormField(
                    controller: addressCtrl,
                    keyboardType: TextInputType.multiline,
                    decoration:
                        InputDecoration(labelText: 'Enter Your Address'),
                    validator: (value) {
                      if (value.length == 0) return ("Address is required");
                    },
                    onSaved: (value) {
                      this.address = value;
                    },
                  ),
                  DropdownButtonFormField(
                    onChanged: (val) {
                      print(val);
                      setState(() {});
                    },
                    hint: Text("Select Your Gender"),
                    items: [
                      DropdownMenuItem(
                        child: Text("Male"),
                        value: 'male',
                      ),
                      DropdownMenuItem(
                        child: Text("Female"),
                        value: 'female',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: handleSubmit,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RaisedButton(
                        color: Colors.white,
                        child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: handleReset,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
