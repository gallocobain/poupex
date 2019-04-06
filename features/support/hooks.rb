Before do
    #visit 'https://aw.fhe.org.br:8440/formulariosweb/formContatoOuvidoria?origem=poupex'

    @ouvidoria = OuvidoriaPage.new

    page.current_window.resize_to(1280, 800)
end

After do |scenario|
    nome_cenario = scenario.name.tr(' ', '_').downcase!
    nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    screenshot = "logs/shots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Clique aqui para ver a evidência!')

  end