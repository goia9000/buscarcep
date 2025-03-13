import 'package:buscarcep/sobre_nos.dart';
import 'package:buscarcep/politica_de_privacidade.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff00416b),
              ),
              child: Text(
                "Buscar CEP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Buscar CEP"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SobreNos()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.policy_outlined),
              title: const Text("Política de Privacidade"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PoliticaDePrivacidade()));
              },
            )
          ],
        ),
      );
  }
}