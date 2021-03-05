Dado("o endereço de consulta de CEP") do
  $uri_base = "https://viacep.com.br/ws/"
end

Quando("eu digitar {string} e acionar Consultar") do |cep|
  $response = HTTParty.get($uri_base + cep + "/json/")
end

Então("exibe {string}.") do |mensagem|
  $ibge = "#{$response["ibge"]}"
  expect("#{$response["ibge"]}").to eq ("3550308")
  p $ibge
end

Então("exibe mensagem {string}.") do |mensagem|
  $ibge = "#{$response["ibge"]}"
  if ($ibge != "")
    p $ibge
  else
    p mensagem
  end
end
