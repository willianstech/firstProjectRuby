#depois de cada cenario será tirado uma foto
After do |scenario|
     #regex para tirar os espaços do nome do cenario e adicionar "underline".
    scenario_name =  scenario.name.gsub(/\s+/, '_').tr('/','_')

    if scenario.failed?
         tirar_foto(scenario_name.downcase!,'falhou')
    else
         tirar_foto(scenario_name.downcase!,'passou')
    end
end