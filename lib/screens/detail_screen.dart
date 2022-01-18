import 'package:covid_tracker/screens/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String name;
  String image;
  int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailScreen(
      {Key? key,
      required this.name,
      required this.image,
      required this.totalCases,
      required this.active,
      required this.critical,
      required this.test,
      required this.todayRecovered,
      required this.totalDeaths,
      required this.totalRecovered})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ResuableRow(
                          title: 'Total Cases',
                          value: widget.totalCases.toString()),
                      ResuableRow(
                          title: 'Tests', value: widget.test.toString()),
                      ResuableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString()),
                      ResuableRow(
                          title: 'Death', value: widget.totalDeaths.toString()),
                      ResuableRow(
                          title: 'Total Recovered',
                          value: widget.totalRecovered.toString()),
                      ResuableRow(
                          title: 'Critical', value: widget.critical.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}
