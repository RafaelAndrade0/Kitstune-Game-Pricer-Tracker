import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kitsune/models/game.dart';
import 'package:kitsune/screens/details/widgets/trailers_images.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreenAlternate extends StatefulWidget {
  final Game game;

  const DetailsScreenAlternate({Key key, this.game}) : super(key: key);
  @override
  _DetailsScreenAlternateState createState() => _DetailsScreenAlternateState();
}

class _DetailsScreenAlternateState extends State<DetailsScreenAlternate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .65,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(widget.game.splash),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .65,
              padding: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.black.withAlpha(0),
                    Colors.black12,
                    Colors.black45,
                    Colors.black87
                  ],
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .33),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.game.title,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum lorem ipsum',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  MdiIcons.microsoftXbox,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  MdiIcons.sonyPlaystation,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Icon(
                                  MdiIcons.video4KBox,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            onTap: () => print('tap'),
                            child: Ink(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 45,
                              decoration: const BoxDecoration(
                                color: Color(0xff0072cd),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Comprar por R\$ ${widget.game.discountedPrice.toStringAsFixed(2)}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .60,
              ),
              height: 500,
              decoration: const BoxDecoration(
                color: Color(0xffFCFCFC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Preview',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: const Color(0xff080509),
                      ),
                    ),
                    TrailersImages(),
                    Divider(
                      color: Colors.grey[200],
                      height: 20,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(15),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text(
                                  'Metacritic',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '95',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(15),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text(
                                  'Steam',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '96%',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(15),
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text(
                                  'GOG',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '3/5',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // LineChart(
                        //   LineChartData(
                        //       axisTitleData: FlAxisTitleData(
                        //         topTitle: AxisTitle(titleText: 'Teste'),
                        //       ),
                        //       backgroundColor: Colors.red),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SafeArea(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: BackButton(
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.8),
                  ),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
