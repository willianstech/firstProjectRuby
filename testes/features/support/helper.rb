#metodo para tirar foto
module Helper

    def tirar_foto(nome_arquivo, resultado)
        #caminho do arquivo, para gerar as fotos na pasta "teste"
        caminho_arquivo = "report/screenshot/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        #relatorio html usando 'embed' 
        embed(foto, 'image/png', 'Clique aqui')
    end
end