import 'package:app_learning/components/popupmenu.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 75,
        centerTitle: true,
        title: const Text('My Profile', style: TextStyle(fontSize: 26, color: Colors.black),),
        leading: Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: IconButton(
                  onPressed: (){},
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/Vector 3.png',fit: BoxFit.fitWidth,),
            ),
            Positioned(
              top: 130,
              left: 30,
              right: 30,
              bottom: 0,
              child: ListView(
                padding: const EdgeInsets.only(top: 10),
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://www.shareicon.net/data/512x512/2016/05/24/770117_people_512x512.png'),
                                radius: 50,
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Newbie',
                                    style: TextStyle(
                                        fontSize: 18,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          InkWell(
                            onTap: (){},
                            child: Image.asset('assets/NotePencil.png', width: 32,height: 32,),
                          ),
                        ],
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 15),
                        child: Divider(color: Colors.grey, height: 1,),
                      ),
                      const IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                    '2+ hours',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 26
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Total Learn',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(color: Colors.grey, width: 10),
                            Column(
                              children: [
                                Text(
                                  '20',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Achivements',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(color: Colors.grey, width: 10),
                            Column(
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  'Language',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20,10,20,0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Dashboard',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 47,
                                        height: 47,
                                        decoration: const BoxDecoration(
                                          color: Colors.blue,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset('assets/setting.png', scale: 1.5,)
                                      ),
                                      const SizedBox(width: 20,),
                                      const Text(
                                        'Settings',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),
                                      )
                                    ],
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context, '/setting');
                                    },
                                      child: const Icon(Icons.arrow_right, size: 40, color: Colors.grey,
                                      )
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 47,
                                          height: 47,
                                          decoration: const BoxDecoration(
                                            color: Colors.yellow,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset('assets/Cup.png', scale: 1.8,)
                                      ),
                                      const SizedBox(width: 20,),
                                      const Text(
                                        'Archivements',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            '2 New',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12
                                            ),
                                          ),
                                          InkWell(
                                            onTap: (){
                                            },
                                              child: const Icon(Icons.arrow_right, size: 40, color: Colors.grey,)
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 47,
                                          height: 47,
                                          decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset('assets/privacy.png', scale: 1.6,)
                                      ),
                                      const SizedBox(width: 20,),
                                      const Text(
                                        'Privacy',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.vertical(top: Radius.circular(20), bottom: Radius.circular(20))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Action Needed',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12
                                            ),
                                          ),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushNamed(context, '/privacy');
                                            },
                                              child: const Icon(Icons.arrow_right, size: 40, color: Colors.grey,)
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'My Account',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(height: 20,),
                              TextButton(
                                style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll(EdgeInsets.all(0))
                                ),
                                onPressed: (){
                                  showModalBottomSheet(
                                    elevation: 2.0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                                      ),
                                      backgroundColor: const Color(0xffFAFAFA),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                          width: MediaQuery.of(context).size.width,
                                          height: 330,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(15,15,15,0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    const Image(image: AssetImage('assets/googlelogo.png'), width: 100, height: 40),
                                                    IconButton(
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        icon: const Icon(Icons.cancel,size: 25, color: Colors.grey,)
                                                    )
                                                  ],
                                                ),
                                                const Text(
                                                  'Choose Account to Continue',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                const SizedBox(height: 20,),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.2),
                                                          spreadRadius: 4,
                                                          blurRadius: 6,
                                                          offset: const Offset(0, 3), // changes position of shadow
                                                        ),
                                                      ],
                                                    borderRadius: const BorderRadius.all(Radius.circular(13))
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.all(20.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(Icons.account_box, size: 30),
                                                            SizedBox(width: 10,),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'John Doe',
                                                                  style: TextStyle(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w500
                                                                  ),
                                                                ),
                                                                SizedBox(height: 5,),
                                                                Text(
                                                                  'Johndoe@gmail.com',
                                                                  style: TextStyle(
                                                                      color: Colors.grey,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w500
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Icon(Icons.arrow_forward_ios_rounded, size: 25,color: Colors.grey,)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10,),
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.2),
                                                          spreadRadius: 4,
                                                          blurRadius: 6,
                                                          offset: const Offset(0, 3), // changes position of shadow
                                                        ),
                                                      ],
                                                      borderRadius: const BorderRadius.all(Radius.circular(13))
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.all(20.0),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(Icons.account_box, size: 30),
                                                            SizedBox(width: 10,),
                                                            Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text(
                                                                  'John Doe',
                                                                  style: TextStyle(
                                                                      fontSize: 16,
                                                                      fontWeight: FontWeight.w500
                                                                  ),
                                                                ),
                                                                SizedBox(height: 5,),
                                                                Text(
                                                                  'Johndoe@gmail.com',
                                                                  style: TextStyle(
                                                                      color: Colors.grey,
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.w500
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Icon(Icons.arrow_forward_ios_rounded, size: 25,color: Colors.grey,)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 20,),
                                                const Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Use another account?',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Icon(Icons.keyboard_arrow_down, size: 25, color: Colors.grey,)
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        );
                                      }
                                  );
                                },
                                child: const Text(
                                  'Switch to Another Account',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              TextButton(
                                style: const ButtonStyle(
                                  padding: MaterialStatePropertyAll(EdgeInsets.all(0))
                                ),
                                onPressed: (){
                                  showModalBottomSheet(
                                      elevation: 2.0,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
                                      ),
                                      backgroundColor: const Color(0xffFAFAFA),
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SizedBox(
                                            width: MediaQuery.of(context).size.width,
                                            height: 300,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(15,15,15,0),
                                              child: Column(
                                                children: [
                                                  const SizedBox(height: 40,),
                                                  const Text(
                                                    'Logout Account?',
                                                    style: TextStyle(
                                                        fontSize: 28,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15,),
                                                  const Text(
                                                    'Are you sure want to logout this account?',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                  const SizedBox(height: 30,),
                                                  SizedBox(
                                                    width: MediaQuery.of(context).size.width,
                                                    height: 50,
                                                    child: ElevatedButton(
                                                      style: const ButtonStyle(
                                                        shape: MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                                          )
                                                        ),
                                                        backgroundColor: MaterialStatePropertyAll(Color(0xffFF2442)),
                                                      ),
                                                        onPressed: (){},
                                                        child: const Text(
                                                          'Logout',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18
                                                          ),
                                                        )
                                                    ),
                                                  ),
                                                  const SizedBox(height: 15,),
                                                  TextButton(
                                                      onPressed: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500
                                                        ),
                                                      )
                                                  )
                                                ],
                                              ),
                                            )
                                        );
                                      }
                                  );
                                },
                                child: const Text(
                                  'Logout Account',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
