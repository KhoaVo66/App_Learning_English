import 'package:flutter/material.dart';
import 'package:app_learning/components/popupmenu.dart';
import 'package:flutter_switch/flutter_switch.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings', style: TextStyle(fontSize: 26, color: Colors.black),),
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
        actions: const [
          PopUpMenu(
            menuList: [
              PopupMenuItem(
                  child: Text('Item1')
              ),
              PopupMenuItem(
                  child: Text('Item2')
              ),
              PopupMenuItem(
                  child: Text('Item3')
              ),
            ],
            icon: Icon(Icons.menu, size: 35, color: Colors.black,),
          ),
          SizedBox(width: 20,),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 40,
              left: 30,
              top: 150,
                child: SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20,15,15,0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Language',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'First Language',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Second Language',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,15,15,0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Other Settings',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Dark Mode',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    FlutterSwitch(
                                      toggleSize: 15,
                                      padding: 3,
                                      height: 20,
                                      width: 32,
                                        value: light,
                                        activeColor: Colors.blue,
                                        onToggle: (bool value){
                                          setState(() {
                                            light = value;
                                          });
                                        }
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Notification',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Text Size',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sound And Volume',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Terms and Condition',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    InkWell(
                                      onTap: null,
                                      child: Icon(Icons.arrow_right, size: 40, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}

