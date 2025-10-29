import 'package:effectivemobiletask/src/features/character/presentation/pages/mainPage.dart';
import 'package:effectivemobiletask/src/features/character/presentation/pages/favoritecharacters.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final VoidCallback toggleTheme;
  const Homepage({super.key, required this.toggleTheme});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [CharacterScreen(), FavoritesPage()];

  void _onTabTapped(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: widget.toggleTheme,
            icon: Icon(Icons.thirteen_mp_outlined),
          ),
        ],
      ),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
