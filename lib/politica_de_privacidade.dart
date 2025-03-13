import 'package:flutter/material.dart';

class PoliticaDePrivacidade extends StatelessWidget {
  const PoliticaDePrivacidade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Cep"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Política de Privacidade\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(width: 20),
            Text(
              "Ultima Atualização: 13/03/2025\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
                "Sua privacidade é importante para nós. O aplicativo Buscar CEP coleta e processa apenas os dados necessários para fornecer a busca de CEPs de forma eficiente.\n\n"),
            Text(
              "1. Dados Coletados\n",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text("Consultas de CEP digitadas pelo usuário.\n"
                "Informações do dispositivo (somente para melhorias no serviço).\n\n"),
            Text(
              "2. Uso dos Dados\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
                "Os dados coletados são usados apenas para exibir informações de endereço.\n"
                "Não compartilhamos seus dados com terceiros.\n\n"),
            Text(
              "3. Segurança\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              "Adotamos medidas para proteger suas informações contra acessos não autorizados.\n\n",
            ),
            Text(
              "4. Seus Direitos\n",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(
              "Você pode excluir os dados do app a qualquer momento nas configurações do dispositivo.\n\n"
              "Ao usar o Buscar CEP, você concorda com esta política. Para dúvidas, entre em contato em por e-mail.",
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
