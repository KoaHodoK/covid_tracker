import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStates extends StatefulWidget {
  const WorldStates({Key? key}) : super(key: key);

  @override
  _WorldStatesState createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 3))
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            PieChart(
              dataMap: const {
                "Total": 20.0,
                "Recover": 15.0,
                "Death": 5.2,
              },
              animationDuration: const Duration(
                milliseconds: 120,
              ),
              chartRadius: MediaQuery.of(context).size.width / 3.2,
              legendOptions:
                  const LegendOptions(legendPosition: LegendPosition.left),
              chartType: ChartType.ring,
              colorList: const [
                Color(0xff4285F4),
                Color(0xff1aa260),
                Color(0xffde5426),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * .06),
              child: Card(
                child: Column(children: [
                  ResuableRow(title: 'Total', value: '200'),
                  ResuableRow(title: 'Recover', value: '50'),
                  ResuableRow(title: 'Death', value: '2'),
                ]),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff1aa260),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('Track Countries'),
              ),
            ),
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
