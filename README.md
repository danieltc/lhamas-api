LHAMAS - FACILITADOR DE ESCALAS

Vou fazer tudo aqui em flask e depois separar api (em flask) e front-end (em react)


abaixo algumas anotacoes pra nao esquecer:

o fluxo seria algo assim:
cadastra serviço (formulario)
cadastra posições daquele serviço (formulario)
cadastra pessoas (formulario)
cadastra quais posições daquele serviço aquela pessoa pode ocupar (talvez nem precise ter então relacionamento da pessoa com um serviço, já que tem com as posições que são do serviço, dá pra chegar com join) (mesmo formulário da pessoa)
cadastra indisponibilidades de cada pessoa (mesmo formulário da pessoa)

no calendariozinho: 
cadastra eventos ("vai ter berçário nesses dias aqui, esse aqui não tem"...)
e (no cadastro de evento) cadastra compromissos.

talvez esse lance de mandar o email da escala atualizada fosse melhor não acontecer automaticamente. De repente mostrar um aviso na tela "ei, vc atualizou a escala mas não avisou a galera", aí o admin clica e manda pra a galera. Senão fica chatíssimo a cada alteração receber um email, vai ter gente marcando com spam e aí lasca tudo kkkk


pensei em:

cadastrar serviços (com seus dias/horários)

cadastrar pessoas (que acessam e informam "indisponibilidade")

uma telinha de montar escala que apresenta as pessoas (indicando colorido quem já fez parte da escala muitas vezes vermelho e quem fez poucas azul, ao longo de um ano, talvez, configurável esse prazo) e quando coloca alguém numa escala de um serviço já deixa ela "indisponível" pra colocar em outra escala de outro serviço na mesma hora e dia (ou pelo menos avisa se for no mesmo dia mas em outra hora)

Também é legal se "montar sugestão" existir (considerando as indisponibilidades, priorizando quem foi menos vezes, etc) aí a pessoa administradora de escalas só clica pra confirmar/negar

acho que a grande vantagem é se tiver vários serviços usando, pq assim as várias escalas "conversam entre si" sem precisar que as pessoas informem as indisponibilidades.

também seria legal colocar foto das pessoas do lado do nome (a própria pessoa, ao logar sei lá uma vez por mes pra colocar indisponibilidades, colocaria a foto) - sem login e senha, o admin manda um email "por favor entre aqui e preencha as indisponibilidades deste mês/semana/data" e a pessoa poderia ir lá e colocar suas indisponibilidades, alterar alguma coisinha no perfil, link expirando em 24h, coisa assim.

admin (luiza e fernanda) teria login e senha, mas os "membros de escala" não.

Daí toda vez que a escala fosse atualizada gerava um email pra cada pessoa que faz parte, com uma imagem ou um pdf. Admins receberiam também, mas sem a marcação bonitinha de "esse aqui é vc". E poderiam mandar a imagem no zap, sei lá.


talvez esse lance de mandar o email da escala atualizada fosse melhor não acontecer automaticamente. De repente mostrar um aviso na tela "ei, vc atualizou a escala mas não avisou a galera", aí o admin clica e manda pra a galera. Senão fica chatíssimo a cada alteração receber um email, vai ter gente marcando com spam e aí lasca tudo kkkk

uma pessoa pode estar em varios serviços
evento tem inicio e fim, indisponibilidade tb.
exemplo:
serviço: berçário matutino
evento: berçário matutino em 06/02/22
posicao: professor, auxiliar 1, auxiliar 2
hm, tem relacionamento entre pessoa e posição, N-pra-N tb. Tem gente q não aceita ser professor e aceita ser auxiliar.
mas blz depois eu boto.
o compromisso seria:
Fulano (pessoa)
Professor (posicao)
berçário matutino em 06/02/22 (evento)
o serviço define os horários de início e fim (começa 7 da manhã, termina 11 da manhã), mas o evento diz o MOMENTO de início e fim (7 da manhã do dia tal, 11 da manhã do dia tal)
é no "evento" que a gente tem q olhar pra ver se o fulano tá disponível.
as pessoas também tem indisponibilidades fora da escala ("tal dia vou viajar") por isso a tabela de indisponibilidade ali. essa tabela tb tem o momento de inicio e de fim.

pra facilitar minha vida eu vou fazer "auxiliar 1, auxiliar 2" em vez de dizer que tem n posições do tipo tal.


