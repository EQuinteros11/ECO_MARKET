import 'package:flutter/material.dart';
import 'package:uno/Cliente/PrincipalCliente.dart';
import 'package:uno/Cliente/cliente_carrito.dart';
import 'package:uno/Cliente/cliente_editar_cuenta.dart';

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
            leading: const Icon(Icons.home, color: Color.fromRGBO(73, 80, 91, 1.0), size: 30.0),
            title: const Text('Pagina Principal'),
            onTap: () => Navigator.push( context, MaterialPageRoute(builder: (context) => const VistaPrincipalCliente() )),
          ),
          ListTile(
            leading: const Icon(Icons.account_circle, color: Colors.orange, size: 30.0),
            title: const Text('Actualizar Perfil'),
            onTap: () => Navigator.push( context, MaterialPageRoute(builder: (context) => const UpdateCliente() )),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart, color: Colors.cyan, size: 30.0),
            title: const Text('Mis Compras'),
            onTap: () => Navigator.push( context, MaterialPageRoute(builder: (context) => const ClienteCarrito() )),
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

/*
void _confirmacionCerrarSesion( BuildContext context ){
  showDialog(
    barrierDismissible: false,
    context: context,
    ch

  );
}
*/