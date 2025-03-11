import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:buscarcep/menu_drawer.dart';
import 'package:http/http.dart' as http;
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _cep = TextEditingController();
  Map<String, dynamic>? _cepData;
  bool _isLoading = false;

  Future<void> _buscarCep() async {
    final String cep = _cep.text.trim();

    setState(() => _isLoading = true);
    final response =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));
    setState(() {
      _cepData = json.decode(response.body);
      // print(_cepData);
    });
    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Cep"),
        centerTitle: true,
      ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _cep,
              keyboardType: TextInputType.number,
              inputFormatters: [
                MaskTextInputFormatter(
                  mask: '#####-###', // Formato do CEP
                  filter: {"#": RegExp(r'[0-9]')},
                  type: MaskAutoCompletionType.lazy,
                )
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Digite o CEP",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _buscarCep,
              child: const Text('Buscar'),
            ),
            const SizedBox(
              height: 30,
            ),
            _isLoading
                ? const LinearProgressIndicator()
                : Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Informações do CEP",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ("CEP: ${_cepData?['cep'] ?? ''}"),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            ("Logradouro: ${_cepData?['logradouro'] ?? ''}"),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            ("Bairro: ${_cepData?['bairro'] ?? ''}"),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            ("Cidade: ${_cepData?['localidade'] ?? ''}"),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            ("Estado: ${_cepData?['uf'] ?? ''}"),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
