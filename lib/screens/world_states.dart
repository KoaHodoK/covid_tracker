import 'package:covid_tracker/models/worldstates_model.dart';
import 'package:covid_tracker/screens/countries_list.dart';
import 'package:covid_tracker/services/state_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStates extends StatefulWidget {
  const WorldStates({Key? key}) : super(key: key);

  @override
  _WorldStatesState createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 5))
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    StateServices stateServices = StateServices();
    return Scaffold(
      appBar: AppBar(title: Text('CovidTrack')),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            FutureBuilder<WorldStatesModel>(
                future: stateServices.fetchWorldStatesRecords(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Expanded(
                      flex: 1,
                      child: SpinKitFadingCircle(
                        color: Colors.white,
                        size: 50,
                        controller: _controller,
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        PieChart(
                          dataMap: {
                            "Total":
                                double.parse(snapshot.data!.cases.toString()),
                            "Recover": double.parse(
                                snapshot.data!.recovered.toString()),
                            "Death":
                                double.parse(snapshot.data!.deaths.toString()),
                          },
                          animationDuration: const Duration(
                            milliseconds: 120,
                          ),
                          chartValuesOptions: const ChartValuesOptions(
                              showChartValuesInPercentage: true),
                          chartRadius: MediaQuery.of(context).size.width / 3.2,
                          legendOptions: const LegendOptions(
                              legendPosition: LegendPosition.left),
                          chartType: ChartType.ring,
                          colorList: const [
                            Color(0xff4285F4),
                            Color(0xff1aa260),
                            Color(0xffde5426),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * .04),
                          child: Card(
                            child: Column(children: [
                              ResuableRow(
                                  title: 'Total',
                                  value: snapshot.data!.cases.toString()),
                              ResuableRow(
                                  title: 'Recover',
                                  value: snapshot.data!.recovered.toString()),
                              ResuableRow(
                                  title: 'Death',
                                  value: snapshot.data!.deaths.toString()),
                              ResuableRow(
                                  title: 'Today Cases',
                                  value: snapshot.data!.todayCases.toString()),
                              ResuableRow(
                                  title: 'Today Recovered',
                                  value:
                                      snapshot.data!.todayRecovered.toString()),
                              ResuableRow(
                                  title: 'Today Deaths',
                                  value: snapshot.data!.todayDeaths.toString()),
                            ]),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CountriesList()));
                          },
                          child: Container(
                            height: 46,
                            decoration: BoxDecoration(
                              color: const Color(0xff1aa260),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text('Track Countries',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                }),
          ],
        ),
      )),
    );
  }
}

class ResuableRow extends StatelessWidget {
  String title, value;
  ResuableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
