#language: pt

Funcionalidade: Consultar CEP
Eu quero consultar um CEP
A fim de receber informações sobre ele.

Cenário: consultando CEP válido
    Dado o endereço de consulta de CEP
    Quando eu digitar "01001000" e acionar Consultar
    Então exibe "IBGE".

Cenário: consultando CEP inválido
    Dado o endereço de consulta de CEP
    Quando eu digitar "12345678" e acionar Consultar
    Então exibe "IBGE".

Esquema do Cenário: Tentando consultar CEP
    Dado o endereço de consulta de CEP
    Quando eu digitar "<cep>" e acionar Consultar
    Então exibe mensagem "<mensagem>".
    
    Exemplos:
    |cep|mensagem|
    |12121212|CEP inválido|
    |11310441|CEP válido|
