import 'package:flutter/material.dart';
import 'package:app_learning/components/popupmenu.dart';
import 'package:percent_indicator/percent_indicator.dart';
class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
  var start = const Color(0xffFF8504);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Achievement', style: TextStyle(fontSize: 26, color: Colors.black),),
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
              top: 140,
              right: 20,
              left: 20,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.only(top: 10),
                  children: [
                    SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: const BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  CircularPercentIndicator(
                                      radius: 45,
                                      lineWidth: 10,
                                      percent: 0.8,
                                      center: const Text('80%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                                      progressColor: const Color(0xff69B85E),
                                      backgroundColor: const Color(0xffF2F2F7),
                                      circularStrokeCap: CircularStrokeCap.round,
                                  ),
                                  const SizedBox(width: 10,),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Total Achivements : 20',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 8,),
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          'Great job, John! Complete your achievements now',
                                          softWrap: true,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xff9BD2FC),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(15,15,0,15),
                                  child: Row(
                                    children: [
                                      Image(image: AssetImage('assets/Group259.png')),
                                      SizedBox(width: 15,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Studious',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          SizedBox(height: 8,),
                                          SizedBox(
                                            width: 230,
                                            child: Text(
                                              'You have completed this lesson 10 times.',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    top: 10,
                                    right: 15,
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, size: 25, color: start,),
                                        Icon(Icons.star, size: 25, color: start,),
                                        Icon(Icons.star, size: 25, color: start,),
                                        const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                        const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                      ],
                                    )
                                )
                              ],
                            )
                          ),
                          const SizedBox(height: 20,),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: Color(0xffF1C40F),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Stack(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(15,15,0,15),
                                    child: Row(
                                      children: [
                                        Image(image: AssetImage('assets/Group258.png')),
                                        SizedBox(width: 15,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Quickie',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            SizedBox(
                                              width: 230,
                                              child: Text(
                                                'You have completed this quiz in less than 3 minutes, 10 times.',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                        ],
                                      )
                                  )
                                ],
                              )
                          ),
                          const SizedBox(height: 20,),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: Color(0xff16A085),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Stack(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(15,15,0,15),
                                    child: Row(
                                      children: [
                                        Image(image: AssetImage('assets/Group257.png')),
                                        SizedBox(width: 15,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ambitious',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            SizedBox(
                                              width: 230,
                                              child: Text(
                                                'You have achieved 15 milestones.',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                        ],
                                      )
                                  )
                                ],
                              )
                          ),
                          const SizedBox(height: 20,),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                  color: Color(0xff2980B9),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: Stack(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(15,15,0,15),
                                    child: Row(
                                      children: [
                                        Image(image: AssetImage('assets/Group256.png')),
                                        SizedBox(width: 15,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Perfectionist',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            SizedBox(
                                              width: 230,
                                              child: Text(
                                                'you have scored 100% on quizzes 20 times.',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 15,
                                      child: Row(
                                        children: [
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          Icon(Icons.star, size: 25, color: start,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                          const Icon(Icons.star_border, size: 25, color: Colors.white,),
                                        ],
                                      )
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}
