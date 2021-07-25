# language: pt

Funcionalidade: Login no Fake Ecommerce
	Como um cliente já cadastrado no site FakeEcommerce 
	Desejo realizar login na plataforma
	Para efetuar compras
  
  Contexto:
    Dado que esteja na página inicial

  # Completar o cenário abaixo
  @login_valido
  Cenário: Realizar login
	Quando clicar no botão de login
	E o site apresentar a tela de autenticação
	E entrar com o usuário cadastrado "iago@teste.com" e senha "teste"
	Então o site carregará uma tela com os dados da minha conta

  # Completar o cenário abaixo
  @login_invalido
  Cenário: Login com falha
	Quando clicar no botão de login
	E o site apresentar a tela de autenticação
	E entrar com o usuário não cadastrado "testeiago" e senha "teste"
	Então o site apresentará um erro informando que as informações de login são inválidas
