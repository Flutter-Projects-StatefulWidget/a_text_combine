import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Project());
}

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => MyProject();
}

class MyProject extends State<Project> {
  TextEditingController userID = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showText = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          drawer: const Drawer(),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 29, 36, 70),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 75,
                    margin: const EdgeInsets.only(top: 30, bottom: 180),
                    child: const Text(
                      'LOGIN',
                      // overflow: TextOverflow.visible,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    child: TextField(
                      //! style
                      style: const TextStyle(color: Colors.white),

                      //! controller
                      controller: userID,

                      //! enabled, Its default state is true
                      // enabled: true,

                      //! max length
                      // maxLength: 10,

                      //! max lines
                      maxLines: 1,

                      //! min lines
                      minLines: 1,

                      //! keyboard type
                      keyboardType: TextInputType.text,

                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(130, 255, 255, 255),
                            )),

                        //! Outlined input border
                        // focusedBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //   color: Color.fromARGB(130, 255, 255, 255),
                        // )),

                        //! enabled border
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(130, 255, 255, 255),
                            )),

                        //! disabled border
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(107, 255, 255, 255),
                            )),

                        //! Hint text
                        // hintText: 'USER ID',
                        // hintStyle: TextStyle(
                        //   color: Color.fromARGB(255, 255, 255, 255),
                        //   fontSize: 25,
                        //   fontWeight: FontWeight.w200,
                        // ),

                        //! Prefix Icon
                        // prefixIcon: Icon(
                        //   Icons.person,
                        //   color: Color.fromARGB(200, 255, 255, 255),
                        //   size: 40,
                        // ),

                        //! icon
                        icon: Icon(
                          Icons.person,
                          size: 40,
                          fill: 1,
                          color: Colors.white70,
                        ),

                        //! Label text
                        labelText: 'USER ID',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(130, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),

                        //! fill color
                        // fillColor: Colors.blueAccent,
                        // filled: true,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    margin: const EdgeInsets.only(bottom: 100),
                    child: TextField(

                      //! style
                      style: const TextStyle(color: Colors.white),

                      //! enabled
                      enabled: true,

                      //! controller
                      controller: password,

                      //! max length
                      // maxLength: 10,

                      //! max lines
                      maxLines: 2,

                      //! max lines
                      minLines: 1,

                      //! keyboard type
                      keyboardType: TextInputType.text,

                      decoration: const InputDecoration(
                        //! Focused border and underline input border
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(130, 255, 255, 255),
                            )),

                        //! Outlined input border
                        // focusedBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //   color: Color.fromARGB(130, 255, 255, 255),
                        // )),

                        //! enabled border
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(130, 255, 255, 255),
                            )),

                        //! disabled border
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(107, 255, 255, 255),
                            )),

                        //! Hint text
                        //   hintText: 'password',
                        //   hintStyle: TextStyle(
                        //     color: Color.fromARGB(255, 255, 255, 255),
                        //     fontSize: 25,
                        //     fontWeight: FontWeight.w200,
                        //   )

                        //! Prefix Icon
                        // prefixIcon: Icon(
                        //   Icons.password,
                        //   color: Color.fromARGB(200, 255, 255, 255),
                        //   size: 40,
                        // ),

                        //! icon
                        icon: Icon(
                          Icons.password,
                          size: 40,
                          fill: 1,
                          color: Colors.white70,
                        ),

                        //! Label text
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(130, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),

                        //! Fill color
                        // fillColor: Colors.blueAccent,
                        // filled: true,
                      ),
                    ),
                  ),

                  //! Material button
                  MaterialButton(
                    height: 8,
                    textColor: Colors.white,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    // color: Colors.white,
                    onPressed: () {
                      setState(() {
                        showText = !showText;
                      });
                    },
                    child: const Text(
                      "Combine & Clear",
                      style: TextStyle(
                          decoration: TextDecoration.underline),
                    ),
                  ),

                  //! SizedBox
                  const SizedBox(
                    height: 20,
                  ),

                  //! Text widget inside if statement
                  if (showText == true) ...[
                    Text(
                      '${userID.text} ${password.text}',
                      style: const TextStyle(color: Colors.white),
                    )
                  ],

                  //! Text
                  // Text('${userID.text} ${password.text}'),
                ],
              ),
            ),
          )),
    );
  }
}

