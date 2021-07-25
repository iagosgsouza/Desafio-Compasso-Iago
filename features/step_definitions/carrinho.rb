Quando("clicar no botão para adicionar produto no carrinho") do
	@carrinho_page.btn_add_to_cart.click
end

Quando("o site aprensentar modal informando que o produto foi adicionado com sucesso") do
	expect('#layer_cart > div.clearfix > div.layer_cart_product > h2').to eql "Product successfully added to your shopping cart"
end

Quando("clicar no botão pra fazer checkout") do
	click_button '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
end

Então("será redirecionado para a página do carrinho, onde poderá finalizar a compra") do
	expect(page.title).to eql "Order - My Store"
end