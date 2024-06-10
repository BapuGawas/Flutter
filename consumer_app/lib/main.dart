import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Player(playerName: "Virat",jerNo:50);
          },
          ),
          ChangeNotifierProvider(
            create: (context) {
              return Match(matchNo: 200,runs: 50000);
            },
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MatchSummary(),
        ),
    );
  }
}
class MatchSummary extends StatefulWidget{
  const MatchSummary({super.key});

  @override 
  State<MatchSummary> createState()=> _MatchSummaryState();
}
class _MatchSummaryState extends State<MatchSummary>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer Demo"),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Player>(context).playerName),
            const SizedBox(height: 15,),
            Text("${Provider.of<Player>(context).jerNo}"),
            const SizedBox(height: 15,),

            Consumer(
              builder: (context, provider, child) {
                return Column(
                  children: [
                    Text("${Provider.of<Match>(context).matchNo}"),
                    const SizedBox(height: 15,),
                    Text("${Provider.of<Match>(context).runs}"),
                    const SizedBox(height: 25,),
                  ],
                );
              },
              ),
            /*Text("${Provider.of<Match>(context).matchNo}"),
            const SizedBox(height: 15,),
            Text("${Provider.of<Match>(context).runs}"),
            const SizedBox(height: 25,),*/

            GestureDetector(
              onTap: () {
                Provider.of<Match>(context,listen: false).changeData(201, 55000);
              },
              child: GestureDetector(
                child: Container(
                  width: 120,
                  height: 35,
                  color: Colors.blue,
                  child: const Center(child: Text("Change Data")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Player{
  final String playerName;
  final int jerNo;

  Player({required this.playerName,required this.jerNo});
}
class Match with ChangeNotifier{
  int matchNo;
  int runs;

  Match({required this.matchNo,required this.runs});

  void changeData(int matchNo,int runs){
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}