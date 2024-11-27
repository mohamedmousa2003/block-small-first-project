
import 'package:flutter/material.dart';
import 'package:mvvm_provider/view_model/view_model_increase.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});

  final String title;
  ViewModelIncrease viewModelIncrease = ViewModelIncrease();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewModelIncrease>(
        create: (context) => viewModelIncrease,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<ViewModelIncrease>(
                builder: (context, viewModel, child) {
                  return Text(
                    viewModel.point.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: viewModelIncrease.incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), 
      ),
    );
  }
}
