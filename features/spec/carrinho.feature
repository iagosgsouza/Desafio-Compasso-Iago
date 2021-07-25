# language: pt

Funcionalidade: Adicionar um produto no carrinho no Fake Ecommerce
	Como um cliente do site FakeEcommerce
	Desejo adicionar um produto no carrinho de compras
	Para finalizar a compra posteriormente
	
  Contexto:
    Dado que eu esteja na página dos produtos
	
	@add_prod_cart
	Cenário: Adicionar produto disponível no carrinho
		Quando clicar no botão para adicionar o produto no carrinho
		E o site apresentar modal informando que o produto foi adicionado com sucesso
		E clicar no botão pra fazer checkout
		Então será redirecionado para a página do carrinho, onde poderá finalizar a compra
