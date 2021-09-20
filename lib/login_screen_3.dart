import 'package:flutter/material.dart';
import 'package:spinning_wheel_flutter/home_page.dart';

class LoginScreen3 extends StatefulWidget {
  @override
  _LoginScreen3State createState() => new _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3>
    with TickerProviderStateMixin {

  //The code is commented because instead of manual scrolling with animation,
  //Now PageView is being used

  /*double scrollPercent = 0.0;
  Offset startDrag;
  double startDragPercentScroll;
  double dragDirection; // -1 for left, +1 for right
  AnimationController controller_minus1To0;
  AnimationController controller_0To1;
  CurvedAnimation anim_minus1To0;
  CurvedAnimation anim_0To1;
  final numCards = 3;
  void _onHorizontalDragStart(DragStartDetails details) {
    startDrag = details.globalPosition;
    startDragPercentScroll = scrollPercent;
  }
  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    final currDrag = details.globalPosition;
    final dragDistance = currDrag.dx - startDrag.dx;
    if (dragDistance > 0) {
      dragDirection = 1.0;
    } else {
      dragDirection = -1.0;
    }
    final singleCardDragPercent = dragDistance / context.size.width;
    setState(() {
      scrollPercent =
          (startDragPercentScroll + (-singleCardDragPercent / numCards))
              .clamp(0.0 - (1 / numCards), (1 / numCards));
      print(scrollPercent);
    });
  }
  void _onHorizontalDragEnd(DragEndDetails details) {
    if (scrollPercent > 0.1666) {
      print("FIRST CASE");
      controller_0To1.forward(from: scrollPercent * numCards);
    } else if (scrollPercent < 0.1666 &&
        scrollPercent > -0.1666 &&
        dragDirection == -1.0) {
      print("SECOND CASE");
      controller_0To1.reverse(from: scrollPercent * numCards);
    } else if (scrollPercent < 0.1666 &&
        scrollPercent > -0.1666 &&
        dragDirection == 1.0) {
      print("THIRD CASE");
      controller_minus1To0.forward(from: scrollPercent * numCards);
    } else if (scrollPercent < -0.1666) {
      print("LAST CASE");
      controller_minus1To0.reverse(from: scrollPercent * numCards);
    }
    setState(() {
      startDrag = null;
      startDragPercentScroll = null;
    });
  }
  */

  @override
  void initState() {
    super.initState();

    //The code is commented because instead of manual scrolling with animation,
    //Now PageView is being used

    /*
    controller_minus1To0 = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: -1.0,
      upperBound: 0.0,
    );
    controller_0To1 = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    anim_minus1To0 = new CurvedAnimation(
      parent: controller_minus1To0,
      curve: Interval(0.10, 0.90, curve: Curves.bounceInOut),
    );
    anim_0To1 = new CurvedAnimation(
      parent: controller_0To1,
      curve: Interval(0.10, 0.90, curve: Curves.bounceInOut),
    );
    anim_0To1.addListener(() {
      scrollPercent = controller_0To1.value / numCards;
//      print(scrollPercent);
      setState(() {});
    });
    anim_minus1To0.addListener(() {
      scrollPercent = controller_minus1To0.value / numCards;
//      print(scrollPercent);
      setState(() {});
    });
    */
  }

  Widget HomePage1() {
    return new Container(

      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white24,
    image: DecorationImage(
    image: AssetImage(
    'assets/images/img.jpg'),
    fit: BoxFit.fill,
    ), ),


      child:
      new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          GestureDetector(
          child: Container(
            padding: EdgeInsets.only(top: 15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CircleAvatar( foregroundImage: ExactAssetImage('assets/images/wheel-6-300.png'),
                  backgroundColor: Colors.blue,
                  radius: 35,

                ),
              ],
            ),
          ),
            onTap: () {
              print("Container clicked");
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            },
    ),

          Container(
            padding: EdgeInsets.only(top: 74.0),
            child: Center(
              child: Icon(
                Icons.videogame_asset_sharp,
                color: Colors.white,
                size: 50.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Amartya ",
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  "Meraki",
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 130.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.red,
                    onPressed: () => (null),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "Play With Friends",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.blue,
                    onPressed: () => (null),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "Play with Computer",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
          new Container(),Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[

      Padding(
        padding: EdgeInsets.only(top: 20, left: 30 , right:30) ,
        child: FlatButton.icon(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          color: Colors.deepPurpleAccent,
          label: Text('Online ',  style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold)) ,
          icon: Icon(Icons.wifi, color: Colors.white),
          onPressed: () {
            setState(() {

            });
          },
        ),
      ),


      Padding(
    padding: EdgeInsets.only(top: 20, left: 30 , right:30) ,
    child: FlatButton.icon(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
    color: Colors.deepPurpleAccent,
   label: Text('Puzzle ',  style: TextStyle(
       color: Colors.white,
       fontWeight: FontWeight.bold)) ,
    icon: Icon(Icons.all_inclusive, color: Colors.white),
    onPressed: () {
    setState(() {

    });
    },
    ),
    )  ],
      ),
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.black,
                    onPressed: () => (null),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "Tournament",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold),
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
          new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    color: Colors.yellow,
                    onPressed: () => (null),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "Daily Challenges",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
    ]));
  }


  PageController _controller = new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
//      child: new GestureDetector(
//        onHorizontalDragStart: _onHorizontalDragStart,
//        onHorizontalDragUpdate: _onHorizontalDragUpdate,
//        onHorizontalDragEnd: _onHorizontalDragEnd,
//        behavior: HitTestBehavior.translucent,
//        child: Stack(
//          children: <Widget>[
//            new FractionalTranslation(
//              translation: Offset(-1 - (scrollPercent / (1 / numCards)), 0.0),
//              child: SignupPage(),
//            ),
//            new FractionalTranslation(
//              translation: Offset(0 - (scrollPercent / (1 / numCards)), 0.0),
//              child: HomePage(),
//            ),
//            new FractionalTranslation(
//              translation: Offset(1 - (scrollPercent / (1 / numCards)), 0.0),
//              child: LoginPage(),
//            ),
//          ],
//        ),
//      ),
        child: PageView(
          controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[ HomePage1()],
          scrollDirection: Axis.horizontal,
        ));
  }
}