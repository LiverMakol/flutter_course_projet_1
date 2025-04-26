import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(text: 'Discussion'),
              Tab(text: 'Statut'),
              Tab(text: 'Appels'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('A')),
                  title: Text('Contact ${index + 1}'),
                  subtitle: Text('Dernier message'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '12:0${index + 1}',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.green,
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Center(child: Text('Statut')),
            Center(child: Text('Appels')),
          ],
        ),
      ),
    );
  }
}
