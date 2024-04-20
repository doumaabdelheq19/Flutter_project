import 'package:flutter_application_4/pass_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const log_in());
}

final TextEditingController passwordconfController = TextEditingController();

class log_in extends StatelessWidget {
  const log_in({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Center(
              child: Container(
                width: 450,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background_app.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Container(
                  width: 450, child: Positioned.fill(child: my_text_fields())),
            )
          ],
        ),
      
    );
  }
}

class my_text_fields extends StatelessWidget {
  const my_text_fields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(left: 35, right: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Container(
                width: 170,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          
          email(),
          password(),
         
          SizedBox(height: 50),
          create_button(),
          SizedBox(height: 20),
          already(),
        ],
      ),
    );
  }
}

class create_button extends StatelessWidget {
  const create_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ElevatedButton(
        onPressed: () {Navigator.pushNamed(context, '/Interest');},
        child: Center(
            child: Text("Log in",
                style: TextStyle(fontSize: 17, color: Colors.white))),
        style: ElevatedButton.styleFrom(
            elevation: 500, backgroundColor: Color.fromARGB(255, 3, 61, 71),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            minimumSize: Size(50, 45)),
      ),
    );
  }
}

class pasword_confirmation extends StatelessWidget {
  const pasword_confirmation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        obscureText: myController1.isPassHidden1.value,
        controller: passwordconfController,
        decoration: InputDecoration(
            hintText: "  password Confirmation",
            suffixIcon: InkWell(
              child: Icon(
                myController1.isPassHidden1.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Color.fromARGB(255, 105, 104, 104),
                size: 20,
              ),
              onTap: () {
                myController1.isPassHidden1.value =
                    !myController1.isPassHidden1.value;
              },
            ),
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 70, 69, 69),
                fontSize: 15,
                fontWeight: FontWeight.w500),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 1, 22, 39), width: 1))),
      ),
    );
  }
}

class password extends StatelessWidget {
  const password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextField(
        obscureText: myController.isPassHidden.value,
        decoration: InputDecoration(
            hintText: "  Password",
            suffixIcon: InkWell(
              child: Icon(
                myController.isPassHidden.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Color.fromARGB(255, 105, 104, 104),
                size: 20,
              ),
              onTap: () {
                myController.isPassHidden.value =
                    !myController.isPassHidden.value;
              },
            ),
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 70, 69, 69),
                fontSize: 15,
                fontWeight: FontWeight.w500),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 1, 22, 39), width: 1))),
      ),
    );
  }
}

class email extends StatelessWidget {
  const email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
          hintText: "  Email",
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 70, 69, 69),
              fontSize: 15,
              fontWeight: FontWeight.w500),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 1, 22, 39), width: 1))),
    );
  }
}

class username extends StatelessWidget {
  const username({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: false,
      decoration: InputDecoration(
          hintText: "  Username",
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 70, 69, 69),
              fontSize: 15,
              fontWeight: FontWeight.w500),
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 1, 22, 39), width: 1))),
    );
  }
}

class already extends StatelessWidget {
  const already({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        child: TextButton(
          onPressed: () { Navigator.pushNamed(context, '/create');},
          child: Text(
            "You don't have an account yet?",
            style:
                TextStyle(fontSize: 16, color: Color.fromARGB(255, 1, 22, 39)),
          ),
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13)),
        ));
  }
}
