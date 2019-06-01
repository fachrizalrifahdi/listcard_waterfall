import 'package:flutter/material.dart';
import 'package:osg4_eudeka_tugas_uiux/src/models/waterfall.dart';

class CardList extends StatefulWidget {
  CardList({Key key}) : super(key: key);

  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Eudeka - OSG4",
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: List.generate(
            waterfalls.length,
            (index) => WaterFallList(waterfalls[index]),
          ),
        ),
      ),
    );
  }
}

class WaterFallList extends StatelessWidget {
  final WaterFall waterfall;

  WaterFallList(this.waterfall);

  @override
  Widget build(BuildContext context) {
    final waterfallCard = Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  waterfall.image,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    waterfall.name,
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Text(waterfall.description),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return waterfallCard;
  }
}
