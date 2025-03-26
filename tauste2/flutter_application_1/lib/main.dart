import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermercado',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const IniciarComponentePrincipalDoApp(),
    );
  }
}

class IniciarComponentePrincipalDoApp extends StatelessWidget {
  const IniciarComponentePrincipalDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Text(
              'Departamentos',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: Text('Tauste Supermercados'),
              subtitle: Text('Bem-vindo ao Tauste!'),
              tileColor: Colors.indigo[900],
              textColor: Colors.white,
              onTap:
                  () => showDialog(
                    context: context,
                    builder:
                        (BuildContext context) => AlertDialog(
                          title: Text('Ã“tima escolha!'),
                          content: Text('Faz toda diferenÃ§a!!!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Fechar'),
                            ),
                          ],
                        ),
                  ),
            ),
            ListTile(
              title: Text('Concorrencia'),
              subtitle: Text('Bem-vindo a concorrencia!'),
              tileColor: Colors.green,
              textColor: Colors.white,
              onTap:
                  () => showDialog(
                    context: context,
                    builder:
                        (BuildContext context) => AlertDialog(
                          title: Text('Produtos de Baixa qualidade!'),
                          content: Text('Melhor Evitar!!!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Fechar'),
                            ),
                          ],
                        ),
                  ),
            ),
          ],
        ),
      ),

      appBar: AppBar(),
      body: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
