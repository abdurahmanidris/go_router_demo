import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardScreen extends StatefulWidget {
  final Widget child;
  const DashboardScreen({required this.child, Key? key, required String title})
      : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeTab,
        backgroundColor: const Color(0xffe0b9f6),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          // BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Terms'),
        ],
      ),
    );
    /*return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Text('CBE Mobile Banking'),
        backgroundColor: Colors.blue,
      ),
      body: widget.child,
      bottomNavigationBar: const BottomNavigationWidget(),
    );*/
  }

  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/chat');
        break;
      case 2:
        context.go('/settings');
        break;
      case 3:
        context.go('terms-of-services');
        break;

      default:
        context.go('/');
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }
}
