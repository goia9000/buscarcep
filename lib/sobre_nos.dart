import 'package:flutter/material.dart';

class SobreNos extends StatelessWidget {
  const SobreNos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Cep"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/buscar_cep_logo.jpg',
                  width: 150,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sobre Nós\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 20),
              const Text(
                  "Bem-vindo ao Buscar CEP, sua plataforma confiável para consulta de CEPs e endereços no Brasil. \nNosso objetivo é facilitar a busca por informações precisas e atualizadas, tornando o processo rápido, simples e acessível para todos."
                  "Sabemos como encontrar um endereço pode ser essencial no dia a dia, seja para preencher um cadastro, localizar um destino ou confirmar um endereço. \nPor isso, criamos uma ferramenta intuitiva que permite consultar CEPs com rapidez e eficiência.\n"),
              const SizedBox(width: 20),
              const Text(
                "Por que escolher nosso serviço?\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Text("✅ Agilidade – Respostas rápidas e sem complicações.\n"
                  "✅ Precisão – Dados atualizados para evitar erros.\n"
                  "✅ Facilidade – Interface intuitiva para qualquer usuário.\n"
                  "✅ Acessibilidade – Plataforma gratuita e disponível a qualquer momento.\n"),
              const Text(
                  "Nosso compromisso é oferecer um serviço confiável, ajudando empresas, profissionais e cidadãos a encontrar endereços de forma prática e eficiente.\n\n"
                  "Se precisar de suporte ou tiver sugestões, entre em contato conosco. Estamos sempre buscando aprimorar a experiência dos nossos usuários!\n\n"
                  "📩 E-mail: contato@seudominio.com\n"
                  "📞 Telefone: (XX) XXXX-XXXX"),
            ],
          ),
        ),
      ),
    );
  }
}
