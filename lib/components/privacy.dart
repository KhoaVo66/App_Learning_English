import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});
  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool userNameVisible=true;
  bool passwordVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Privacy', style: TextStyle(fontSize: 26, color: Colors.black),),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new ,size: 30, color: Colors.black,)
              ),
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/Background.png',fit: BoxFit.fitWidth,),
            ),
            Positioned(
              right: 25,
              left: 25,
              bottom: 0,
              top: 130,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(top: 10),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          width: 120,
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage('https://www.shareicon.net/data/512x512/2016/05/24/770117_people_512x512.png'),
                                radius: 55,
                              ),
                              Positioned(
                                left: 80,
                                bottom: 0,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.blue,
                                      child: IconButton(
                                          onPressed: (){},
                                          icon: const Center(child: Icon(Icons.edit, size: 18, color: Colors.white,))
                                      ),
                                    ),
                                  )
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Column(
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text(
                              'Newbie',
                              style: TextStyle(
                                color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  TextFormField(
                                    initialValue: "John Doe",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1, color: Colors.grey
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          width: 1, color: Colors.blue
                                        ),
                                        borderRadius: BorderRadius.all(Radius.circular(50))
                                      )
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Username',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  TextFormField(
                                    obscureText: userNameVisible,
                                    initialValue: "johnDOE",
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),
                                        suffixIcon: IconButton(
                                            onPressed: (){
                                              setState(() {
                                                userNameVisible = !userNameVisible;
                                              });
                                            },
                                            icon: Icon(userNameVisible ? Icons.visibility : Icons.visibility_off)
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Email',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  TextFormField(
                                    initialValue: "John.doe@gmail.com",
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        )
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Password',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  TextFormField(
                                    obscureText: passwordVisible,
                                    initialValue: "John Doe",
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                                        enabledBorder: const  OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.grey
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),
                                        focusedBorder: const  OutlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1, color: Colors.blue
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),
                                        suffixIcon: IconButton(
                                            onPressed: (){
                                              setState(() {
                                                passwordVisible = !passwordVisible;
                                              });
                                            },
                                            icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off)
                                        )
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text(
                                      '21',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Joined From',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    '5 Jan 2022',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}
