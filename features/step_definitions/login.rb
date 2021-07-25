Quando("clicar no botão de login") do
    @home_page.btn_go_to_sign_in.click
end

E ("o site apresentar a tela de autenticação") do
	expect(page.title).to eql "Login - My Store"
end

E ("entrar com o usuário cadastrado "iago@teste.com" e senha "teste" ") do
	fill in 'email', with 'iago@teste.com'
	fill in 'passwd', with 'teste'
	click_button '#SubmitLogin'
end

Então("o site carregará uma tela com os dados da minha conta") do
	expect(page.title).to eql "My Account - My Store"
end

E ("entrar com um usuário não cadastrado "testeiago" e senha "teste" ") do
	fill in 'email', with 'iago@teste.com'
	fill in 'passwd', with 'teste'
	click_button '#SubmitLogin'
end

Então("o site apresentará um erro informando que as informações de login são inválidas") do
	expect(.alert-danger).to eql "Invalid email address."
end