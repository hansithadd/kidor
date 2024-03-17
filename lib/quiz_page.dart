import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});
  
 

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Container(
          height: 50,
          width: 90,
          decoration: ShapeDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/logo.jpg"),
              fit: BoxFit.fill,
            ),
                                    
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        )
      ),
      body: SingleChildScrollView( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Container(
                  width: 370,
                  height: 125,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF6855FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 100,
                            height: 90,
                            decoration: ShapeDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/quizPage/quizBarPic.png"),
                                fit: BoxFit.fill,
                                ),
                                          
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(2.0),
                                child: SizedBox(
                                  width: 200,
                                  height: 30,
                                  //color: Colors.black,
                                  child: Text(
                                    'Quiz | Revise what you learn',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Container(
                                  width: 40,
                                  height: 2,
                                  color: Colors.white,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: SizedBox(
                                  width: 260,
                                  height: 40,
                                  //color: Colors.black,
                                  child: Text(
                                    'Would you like to generate your own quiz for a different lesson? We got you!',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.white,
                  margin: const EdgeInsets.all(10),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.black,
                              size: 30,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Quiz',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.filter_list_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                      ],
                    ),
                
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    print('Button clicked!');
                  },
                  child: Container(
                    width: 350,
                    height: 137,
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Container(
                              width: 109,
                              height: 100,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/quizPage/gQuiz.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 44, right: 64, bottom: 5),
                                  child: Container(
                                    width: 104,
                                    height: 19,
                                    child: const Text(
                                      'Generate Quiz',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 168,
                                  height: 37,
                                  child: Text(
                                    'Enter a text and create your own quiz',
                                    style: TextStyle(
                                      fontSize: 13,
                                      height: 1
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              GestureDetector(
                onTap: () {
                  print('Previously Generated Quiz clicked!');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 13),
                  child: Container(
                    width: 350,
                    height: 137,
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(15),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Container(
                              width: 109,
                              height: 100,
                              decoration: ShapeDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/quizPage/pgQuiz.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 42, right: 64, bottom: 5),
                                  child: Container(
                                    width: 104,
                                    height: 19,
                                    child: const Text(
                                      'Previously Generated Quiz',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 168,
                                  height: 50,
                                  child: Text(
                                    'Every quiz you create is saved here. View previously generated quizzes.',
                                    style: TextStyle(
                                      fontSize: 13,
                                      height: 1
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )

              
            ],
          ),
        ),
      ),
    ),
  );
}
}