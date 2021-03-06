import 'package:flutter/material.dart';
import 'package:kitsune/models/game.dart';
import 'package:kitsune/screens/details/widgets/trailers_images.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailsScreen extends StatefulWidget {
  final Game game;

  const DetailsScreen({Key key, this.game}) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color(0xfffdfdfd),
            floating: false,
            pinned: false,
            snap: false,
            expandedHeight: MediaQuery.of(context).size.height * .65,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 28,
                ),
                onPressed: () {},
              )
            ],
            flexibleSpace: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.black54,
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.game.splash),
                      ),
                    ),
                  ),
                ),
                Container(
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
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 5,
                    children: <Widget>[
                      Text(
                        widget.game.title,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(
                              MdiIcons.microsoftXbox,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              MdiIcons.sonyPlaystation,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              MdiIcons.video4KBox,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            onTap: () {},
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const TrailersImages([]),
                Divider(
                  color: Colors.grey[200],
                  height: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 8,
                    bottom: 8,
                    right: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Notas',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xff080509),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 40, horizontal: 30),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Widget>[
                                Text('Metacritic'),
                                Text('95')
                              ],
                            ),
                          )
                        ],
                      )
                      // const Text(
                      //   'Desenvolvedor: ',
                      // ),
                      // const Text('Publicador: '),
                      // const Text('Diretores: '),
                      // const Text('Data de Lançamento: '),
                    ],
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //     top: 8,
                //     bottom: 8,
                //     right: 8,
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: <Widget>[
                //       Text(
                //         'Notas',
                //         style: TextStyle(
                //           fontWeight: FontWeight.w600,
                //           fontSize: 20,
                //         ),
                //       ),
                //       Row(
                //         children: <Widget>[Container()],
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
