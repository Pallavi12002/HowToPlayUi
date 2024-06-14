import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HowToPlayPage(),
    );
  }
}

class HowToPlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xFF7775F8),
        title: const Text(
          'How To Play',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color(0xFF7775F8), // Set the whole background color
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StepIndicator(),
                    const SizedBox(height: 24),
                    InstructionStep(
                      stepNumber: '1',
                      title: 'Select A Match',
                      description:
                      'You need to consider factors such as the format of the match, pitch conditions, player form, team balance, and captain and vice-captain selection.',
                    ),
                    InstructionStep(
                      stepNumber: '2',
                      title: 'Create your teams',
                      description:
                      'You need to consider factors such as the format of the match, pitch conditions, player form, team balance, and captain and vice-captain selection.',
                    ),
                    InstructionStep(
                      stepNumber: '3',
                      title: 'Join Contest',
                      description:
                      'You need to consider factors such as the format of the match, pitch conditions, player form, team balance, and captain and vice-captain selection.',
                    ),
                    InstructionStep(
                      stepNumber: '4',
                      title: 'Follow Match',
                      description:
                      'You need to consider factors such as the format of the match, pitch conditions, player form, team balance, and captain and vice-captain selection.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class StepIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StepCircle(stepNumber: '1', label: 'Select\nMatch'),
        const StepDivider(),
        StepCircle(stepNumber: '2', label: 'Create Your\nTeams'),
        const StepDivider(),
        StepCircle(stepNumber: '3', label: 'Join\nContest'),
        const StepDivider(),
        StepCircle(stepNumber: '4', label: 'Follow\nMatch'),
      ],
    );
  }
}

class StepCircle extends StatelessWidget {
  final String stepNumber;
  final String label;

  StepCircle({required this.stepNumber, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xFF7463F0),
          child: Text(
            stepNumber,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class StepDivider extends StatelessWidget {
  const StepDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        color: Colors.grey,
        margin: const EdgeInsets.symmetric(horizontal: 8),
      ),
    );
  }
}

class InstructionStep extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;

  InstructionStep({
    required this.stepNumber,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$stepNumber. $title',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
