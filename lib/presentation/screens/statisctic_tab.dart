import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'StatiscticTabRoute')
class StatiscticTab extends StatelessWidget {
  const StatiscticTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text('Statisctic Tab')));
  }
}
