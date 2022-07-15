import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kabbee+'),
            accountEmail: Text('@kabbee.org'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://tinyurl.com/yz6zpb58',
                  width: 90,
                  height: 90,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage('https://tinyurl.com/yepybycy'),
                fit: BoxFit.cover,
              ),
              // border: Border.all(
              //   color: Colors.black,
              //   width: 8,
              // ),
              //borderRadius: BorderRadius.circular(12),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline_sharp),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contac Us'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
