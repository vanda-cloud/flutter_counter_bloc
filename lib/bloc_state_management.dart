import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc/counter/counter_observer.dart';
import 'package:flutter_counter_bloc/go_router.dart';
import 'package:go_router/go_router.dart';

class BlocStateManagement extends StatefulWidget {
  const BlocStateManagement({super.key});

  @override
  _BlocStateManagementState createState() => _BlocStateManagementState();
}

class _BlocStateManagementState extends State<BlocStateManagement> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc State Management'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () {
                  Bloc.observer = const CounterObserver();
                  context.push('/cubit');
                },
                child: Card(
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Cubit',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                onTap: () {},
                child: Card(
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: const Text(
                      'Bloc',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String cardName;

  DetailPage(this.cardName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$cardName Detail'),
      ),
      body: Center(
        child: Text(
          'You clicked on $cardName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
