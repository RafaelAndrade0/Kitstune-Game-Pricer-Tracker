import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrailersImages extends StatefulWidget {
  final List<String> gamePreviews;

  const TrailersImages(this.gamePreviews);

  @override
  _TrailersImagesState createState() => _TrailersImagesState();
}

class _TrailersImagesState extends State<TrailersImages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfffdfdfd),
      margin: const EdgeInsets.only(top: 8),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  widget.gamePreviews[0],
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 160.0,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            widget.gamePreviews[1],
                          ),
                        ),
                        color: Colors.purple,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * .09,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 5,
                        left: 5,
                        bottom: 8,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            widget.gamePreviews[2],
                          ),
                        ),
                        color: Colors.pink,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * .09,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  widget.gamePreviews[3],
                ),
              ),
              color: Colors.green,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
