import 'package:flutter/material.dart';
import 'package:gymapp/features/exercises/screens/exercises_screen.dart';
import 'package:gymapp/features/routines/screens/routines_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = const [
    ExercisesScreen(),
    RoutinesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: IndexedStack(
        index: _currentIndex,
        children: _tabs,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.grey.shade600,
        items:  [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.dumbbell),
            label: 'Ejercicios',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.calendarCheck),
            label: 'Rutinas',
          ),
        ],
      ),
    );
  }
}
