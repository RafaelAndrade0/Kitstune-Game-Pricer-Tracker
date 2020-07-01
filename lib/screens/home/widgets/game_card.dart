import 'package:flutter/material.dart';
import 'package:kitsune/models/game.dart';

class GameCard extends StatefulWidget {
  final Game game;
  const GameCard({
    Key key,
    this.game,
  }) : super(key: key);

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 320,
      child: Stack(
        children: <Widget>[
          Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 3,
                  color: Colors.black12,
                ),
              ],
            ),
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(widget.game.thumb),
              ),
            ),
          ),
          Positioned(
            bottom: 105,
            left: 260,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 3,
                    color: Colors.black12,
                  ),
                ],
              ),
              child: Icon(
                Icons.bookmark,
                color: Color(0xFF080509),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            // top: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.game.title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFF080509),
                    ),
                  ),
                  Text(
                    widget.game.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'R\$${widget.game.discountedPrice.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Colors.red[700],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'R\$${widget.game.originalPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //   return Padding(
    //     padding: const EdgeInsets.all(10.0),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         image: DecorationImage(
    //           fit: BoxFit.cover,
    //           image: NetworkImage(widget.game.thumb),
    //         ),
    //         borderRadius: BorderRadius.all(
    //           Radius.circular(20),
    //         ),
    //   boxShadow: [
    //     BoxShadow(
    //       blurRadius: 8,
    //       spreadRadius: 3,
    //       color: Colors.black12,
    //     ),
    //   ],
    //       ),
    //       child: Stack(
    //         children: <Widget>[
    //           Container(
    //             // height: 300,
    //             width: 320,
    //           ),
    //           Positioned(
    //             bottom: 0,
    //             right: 0,
    //             left: 0,
    //             child: Container(
    //               height: 130,
    //               child: Container(
    //                 padding: EdgeInsets.all(15),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: <Widget>[
    //                     Text(
    //                       widget.game.title,
    //                       style: TextStyle(
    //                         fontSize: 25,
    //                         fontWeight: FontWeight.w900,
    //                         color: Color(0XFF080509),
    //                       ),
    //                     ),
    //                     Text(
    //                       widget.game.description,
    //                       style: TextStyle(
    //                         fontWeight: FontWeight.w400,
    //                       ),
    //                     ),
    //                     Row(
    //                       children: <Widget>[
    //                         Text(
    //                           'R\$${widget.game.discountedPrice.toStringAsFixed(2)}',
    //                           style: TextStyle(
    //                             color: Colors.red[700],
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 18,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(left: 5),
    //                           child: Text(
    //                             'R\$${widget.game.originalPrice.toStringAsFixed(2)}',
    //                             style: TextStyle(
    //                               fontSize: 14,
    //                               decoration: TextDecoration.lineThrough,
    //                               fontWeight: FontWeight.w500,
    //                             ),
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               decoration: BoxDecoration(
    //                 // color: Colors.red,
    //                 color: Color(0xFFfefffe),
    //                 borderRadius: BorderRadius.only(
    //                   bottomLeft: Radius.circular(20),
    //                   bottomRight: Radius.circular(20),
    //                 ),
    //               ),
    //             ),
    //           ),
    //       Positioned(
    //         bottom: 105,
    //         left: 260,
    //         child: Container(
    //           padding: EdgeInsets.all(10.0),
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             shape: BoxShape.circle,
    //             boxShadow: [
    //               BoxShadow(
    //                 blurRadius: 8,
    //                 spreadRadius: 3,
    //                 color: Colors.black12,
    //               ),
    //             ],
    //           ),
    //           child: Icon(
    //             Icons.bookmark,
    //             color: Color(0xFF080509),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //     ),
    //   );
    // }
  }
}
