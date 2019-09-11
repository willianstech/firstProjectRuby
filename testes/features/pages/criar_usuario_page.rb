class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'Will'
        sobrenome.set 'Stech    '
        email.set 'willian@gmail.com'
        endereco.set 'teste'
        universidade.set 'fatec'
        profissao.set 'analista'
        genero.set 'Masc'
        idade.set '30'
        criar.click   
    end     
end