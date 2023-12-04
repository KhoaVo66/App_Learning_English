import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> image = [
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                      child: const Image(image: AssetImage('assets/Group260.png'),
                        fit: BoxFit.fitWidth,)
                  ),
                  const Positioned(
                    top: 70,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Which Language',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'would you like to learn?',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
                top: 150,
                right: 20,
                left: 20,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  elevation: 10,
                  shadowColor: Colors.black,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(Icons.search, size: 35,),
                        ),
                        hintText: 'Search Language...',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(12))
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.only(left: 40, bottom: 20, top: 20)
                    ),
                  ),
                )
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 20,
              top: 240,
                child: ListView(
                  padding: const EdgeInsets.only(top: 10),
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Category:',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  )
                                ),
                                backgroundColor: MaterialStatePropertyAll(Colors.blue)
                              ),
                                onPressed: null,
                                child: Text(
                                  'English',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14
                                  ),
                                )
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        )
                                    ),
                                    backgroundColor: MaterialStatePropertyAll(Colors.blue)
                                ),
                                onPressed: null,
                                child: Text(
                                  '#Japanese',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                )
                            ),
                            SizedBox(width: 10,),
                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        )
                                    ),
                                    backgroundColor: MaterialStatePropertyAll(Colors.blue)
                                ),
                                onPressed: null,
                                child: Text(
                                  '#Korean',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14
                                  ),
                                )
                            ),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              SizedBox(
                                width: 100,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: const Image(
                                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1200px-Flag_of_the_United_Kingdom_%281-2%29.svg.png'),
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    const Text(
                                        'English',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              SizedBox(
                                width: 100,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: const Image(
                                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/2560px-Flag_of_Japan.svg.png'),
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    const Text(
                                      'Japanese',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              SizedBox(
                                width: 100,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: const Image(
                                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_South_Korea.png'),
                                        fit: BoxFit.cover,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    const Text(
                                      'Korean',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              SizedBox(
                                width: 100,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(16.0),
                                      child: const Image(
                                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/2560px-Flag_of_the_People%27s_Republic_of_China.svg.png'),
                                        fit: BoxFit.fill,
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    const Text(
                                      'Chinese',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Previous Language Courses',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: const BorderRadius.all(Radius.circular(16))
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/1200px-Flag_of_the_United_Kingdom_%281-2%29.svg.png'),
                                            ),
                                            SizedBox(width: 15,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'English',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  'Introduction',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pushNamed(context, '/languagedetail');
                                          },
                                            child: const Icon(Icons.keyboard_arrow_right, size: 50, color: Colors.grey,)
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15,),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(16))
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/2560px-Flag_of_Japan.svg.png'),
                                            ),
                                            SizedBox(width: 15,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Japanese',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  'Grammar',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Icon(Icons.keyboard_arrow_right, size: 50, color: Colors.grey,)
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15,),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(Radius.circular(16))
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  child: const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 25,
                                              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/255px-Flag_of_the_People%27s_Republic_of_China.svg.png'),
                                            ),
                                            SizedBox(width: 15,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Chinese',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  'Pronunciation',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Icon(Icons.keyboard_arrow_right, size: 50, color: Colors.grey,)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
            ),
          ],
        ),
      )
    );
  }
}
