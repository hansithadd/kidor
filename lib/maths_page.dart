import 'package:flutter/material.dart';

class MathsPage extends StatelessWidget {
  const MathsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 170,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mathsPage/mathsBar.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150)
                )
              ),
            ),
            const LessonCard(
              lessonImagePath: "assets/mathsPage/circleL.png",
              heading: "Circle",
              paragraph: "Learn everything  about circles and its formulas ",
            ),
            const LessonCard(
              lessonImagePath: "assets/mathsPage/triangleL.png",
              heading: "Triangle",
              paragraph: "Learn everything  about triangles and its formulas  ",
            ),
            const LessonCard(
              lessonImagePath: "assets/mathsPage/cubeL.png",
              heading: "Cube",
              paragraph: "Learn everything  about cubes and its formulas ",
            ),

            
          ],
        )


      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  final String lessonImagePath;
  final String heading;
  final String paragraph;
  const LessonCard({
    Key? key, 
    required this.lessonImagePath, 
    required this.heading,
    required this.paragraph,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
                      width: 350,
                      height: 150,
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                width: 130,
                                height: 120,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(lessonImagePath),
                                    fit: BoxFit.fill,
                                  ),
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 27, right: 64, bottom: 5),
                                    child: Container(
                                      width: 104,
                                      height: 25,
                                      child: Text(
                                        heading,
                                        style: const TextStyle(
                                          fontSize: 22.5,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: SizedBox(
                                      width: 168,
                                      height: 40,
                                      child: Text(
                                        paragraph,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          height: 1
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 50),
                                        child: Container(
                                          width:77,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("assets/gameButton.png"),
                                              fit: BoxFit.fill,
                                            ),
                                            
                                          ),
                                          
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 12),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("assets/heartL.png"),
                                                fit: BoxFit.fill,
                                              ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
    );
  }
}
