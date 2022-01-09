import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int dw = 0;
  int cw = 0;
  int pw = 0;
  int b1 = 0;
  int b2 = 0;
  int b3 = 0;
  int b4 = 0;
  int b5 = 0;
  int b6 = 0;
  int b7 = 0;
  int b8 = 0;
  int b9 = 0;
  int f = 1;

// This is the part where I have written my algorithm.
// The first move of the computer is determined by the first move of the player.
// It lists down all the win cases and then checks every move of the player,
// if the player can win in the next move it blocks the player.
// If the computer can win in the next move, it wins by making the required move.
//In theory, it is impossible to win against this algorithm.
//The fist move is decided by using the minMax algorithm.
//Therefore, if the player is careful enough then he/she can only expect to draw the game.

  move() {
    List<List> winal = [
      ['b1', 'b2', 'b3'],
      ['b4', 'b5', 'b6'],
      ['b7', 'b8', 'b9'],
      ['b1', 'b5', 'b9'],
      ['b3', 'b5', 'b7'],
      ['b1', 'b4', 'b7'],
      ['b2', 'b5', 'b8'],
      ['b3', 'b6', 'b9']
    ];
    List<List> win = [
      [b1, b2, b3],
      [b4, b5, b6],
      [b7, b8, b9],
      [b1, b5, b9],
      [b3, b5, b7],
      [b1, b4, b7],
      [b2, b5, b8],
      [b3, b6, b9]
    ];
    if (f == 1 && (b1 == 1 || b3 == 1 || b7 == 1 || b9 == 1)) {
      setState(() {
        f = 0;
        b5 = 2;
      });
    } else if (f == 1 && (b2 == 1 || b6 == 1 || b4 == 1 || b8 == 1)) {
      if (b2 == 1) {
        setState(() {
          f = 0;
          b8 = 2;
        });
      } else if (b6 == 1) {
        setState(() {
          f = 0;
          b4 = 2;
        });
      } else if (b4 == 1) {
        setState(() {
          f = 0;
          b6 = 2;
        });
      } else if (b8 == 1) {
        setState(() {
          f = 0;
          b2 = 2;
        });
      }
    } else if (f == 1 && b5 == 1) {
      setState(() {
        f = 0;
        b1 = 2;
      });
    } else if (f == 0) {
      bool flag = false;
      for (int i = 0; i < 8 && flag == false; i++) {
        int countP = 0;
        int countC = 0;
        for (int j = 0; j < 3; j++) {
          if (win[i][j] == 1) {
            countP++;
          } else if (win[i][j] == 2) {
            countC++;
          }
        }
        print([countP, countC]);
        if (countC == 1 && countP == 0) {
          for (int j = 0; j < 3 && flag == false; j++) {
            if (win[i][j] != 1 && win[i][j] == 0) {
              String pos = winal[i][j];
              if (pos == 'b1') {
                setState(() {
                  b1 = 2;
                });
              } else if (pos == 'b2') {
                setState(() {
                  b2 = 2;
                });
              } else if (pos == 'b4') {
                setState(() {
                  b4 = 2;
                });
              } else if (pos == 'b3') {
                setState(() {
                  b3 = 2;
                });
              } else if (pos == 'b5') {
                setState(() {
                  b5 = 2;
                });
              } else if (pos == 'b6') {
                setState(() {
                  b6 = 2;
                });
              } else if (pos == 'b7') {
                setState(() {
                  b7 = 2;
                });
              } else if (pos == 'b8') {
                setState(() {
                  b8 = 2;
                });
              } else if (pos == 'b9') {
                setState(() {
                  b9 = 2;
                });
              }
              flag = true;
            }
          }
        } else if (countP == 2 && countC == 0) {
          for (int j = 0; j < 3; j++) {
            if (win[i][j] != 1 && win[i][j] == 0) {
              String pos = winal[i][j];
              if (pos == 'b1') {
                setState(() {
                  b1 = 2;
                });
              } else if (pos == 'b2') {
                setState(() {
                  b2 = 2;
                });
              } else if (pos == 'b4') {
                setState(() {
                  b4 = 2;
                });
              } else if (pos == 'b3') {
                setState(() {
                  b3 = 2;
                });
              } else if (pos == 'b5') {
                setState(() {
                  b5 = 2;
                });
              } else if (pos == 'b6') {
                setState(() {
                  b6 = 2;
                });
              } else if (pos == 'b7') {
                setState(() {
                  b7 = 2;
                });
              } else if (pos == 'b8') {
                setState(() {
                  b8 = 2;
                });
              } else if (pos == 'b9') {
                setState(() {
                  b9 = 2;
                });
              }
              flag = true;
            }
          }
        } else if (countC == 2 && countP == 0) {
          for (int j = 0; j < 3; j++) {
            if (win[i][j] != 1 && win[i][j] == 0) {
              cw++;
              setState(() {
                b1 = 0;
                b2 = 0;
                b3 = 0;
                b4 = 0;
                b5 = 0;
                b6 = 0;
                b7 = 0;
                b8 = 0;
                b9 = 0;
                f = 1;
              });
            }
          }
        } else if (countP == 3) {
          pw++;
          setState(() {
            b1 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
            b5 = 0;
            b6 = 0;
            b7 = 0;
            b8 = 0;
            b9 = 0;
            f = 1;
          });
        } else if (countC == 3) {
          cw++;
          setState(() {
            b1 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
            b5 = 0;
            b6 = 0;
            b7 = 0;
            b8 = 0;
            b9 = 0;
            f = 1;
          });
        } else if (b1 != 0 &&
            b2 != 0 &&
            b3 != 0 &&
            b4 != 0 &&
            b5 != 0 &&
            b6 != 0 &&
            b7 != 0 &&
            b8 != 0 &&
            b9 != 0) {
          dw++;
          setState(() {
            b1 = 0;
            b2 = 0;
            b3 = 0;
            b4 = 0;
            b5 = 0;
            b6 = 0;
            b7 = 0;
            b8 = 0;
            b9 = 0;
            f = 1;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: const AlignmentDirectional(0, 0),
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -0.87),
              child: Text(
                'Computer - ' +
                    cw.toString() +
                    '\nPlayer - ' +
                    pw.toString() +
                    '\nDraw - ' +
                    dw.toString(),
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width - 1,
                decoration: const BoxDecoration(
                  color: Color(0xC2000000),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.vertical,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (b1 != 2) {
                            setState(() {
                              b1 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b1 != 0
                                    ? 'assets/images/b1' +
                                        b1.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b2 != 2) {
                            setState(() {
                              b2 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b2 != 0
                                    ? 'assets/images/b2' +
                                        b2.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b3 != 2) {
                            setState(() {
                              b3 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b3 != 0
                                    ? 'assets/images/b3' +
                                        b3.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b4 != 2) {
                            setState(() {
                              b4 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b4 != 0
                                    ? 'assets/images/b4' +
                                        b4.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b5 != 2) {
                            setState(() {
                              b5 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b5 != 0
                                    ? 'assets/images/b5' +
                                        b5.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b6 != 2) {
                            setState(() {
                              b6 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b6 != 0
                                    ? 'assets/images/b6' +
                                        b6.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b7 != 2) {
                            setState(() {
                              b7 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b7 != 0
                                    ? 'assets/images/b7' +
                                        b7.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b8 != 2) {
                            setState(() {
                              b8 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b8 != 0
                                    ? 'assets/images/b8' +
                                        b8.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (b9 != 2) {
                            setState(() {
                              b9 = 1;
                            });
                            move();
                          }
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                b9 != 0
                                    ? 'assets/images/b9' +
                                        b9.toString() +
                                        '.jpeg'
                                    : 'assets/images/null.jpeg',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
