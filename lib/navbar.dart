import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('ECO MARKET'),
            accountEmail: const Text('(NombreUsuarioActivo)'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/menu/Logo.jpg')),
            ),
            decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage('assets/menu/Principal.png'), fit: BoxFit.cover)
            ),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle, color: Colors.orange, size: 30.0),
            title: const Text('Perfil'),
            onTap: () => print('Profile tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, color: Colors.cyan, size: 30.0),
            title: const Text('Mis Compras'),
            onTap: () => print('Shopping_Cart tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.add_business_rounded, color: Colors.green, size: 30.0),
            title: const Text('Cerca de ti'),
            onTap: () => print('business Rounded'),
          ),
          ListTile(
            leading: const Icon(Icons.message, color: Colors.blue, size: 30.0),
            title: const Text('Contactanos'),
            onTap: () => print('Messages tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.share, size: 30.0),
            title: const Text('Compartir'),
            onTap: () => print('Share tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.amber, size: 30.0),
            title: const Text('Notificaciones'),
            onTap: () => print('Notifications tapped'),
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 30.0),
            title: const Text('Ajustes'),
            onTap: () => print('Settings tapped'),
          ),
          const Expanded(
              child: ListTile()
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.black, size: 30.0),
            title: const Text('Salir'),
            onTap: () => print('Logout tapped'),
          ),
        ],
      ),
    );
  }

}
