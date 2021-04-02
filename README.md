# GameOfLife

O Jogo da Vida de Conway é um sistema de automação celular usado para exemplificar
como a interação entre entidades influencia na sua progressão produtiva.

O programa se trata de uma simulação de um mundo bi-dimensional onde cada celula
ocupa um espaço no plano cartesiano e se encontra em estado ativo ou inativo.

## Running

Cada "jogo" pode ser iniciado rodando `GameOfLife.Game.new(options)` onde
`options` é uma Keyword com as seguintes chaves/opções:

Opção = `:size`
Tipo = `post_integer`
Requerido? = Não
Descrição = O tamanho de um lado no plano simulado
