---
title: A Importância dos Requisitos
author: Ricardo da Verdade Silva
layout: post
tags: 
 - análise de requisitos
 - engenharia de software
 - tradução
comments: true
resume: 
 Muitas vezes, durante o ciclo de desenvolvimento de um software, os requisitos
 são deixados de lado. Muitos de nós nem sabemos a real importância, e impacto
 que uma, boa (ou inexistente), análise de requisitos tem em todo o ciclo de desenvolvimento
 de um software.
 O livro Code Complete deixou esta importância clara para mim. Nesta tradução livre tento trazer
 este valiosíssimo conhecimento a vocês.

---

Este post é uma tradução livre que eu fiz do livro Code
Complete, Second Edition, Capitulo 3.1 (Importance of Prerequisites), páginas 27 - 31.
No momento estou lendo-o, este trecho eu achei extremamente válido para o dia-a-dia de
qualquer desenvolvedor e resolvi compartilha-lo aqui.

## Argumento totalmente convincente e infalível para levantar pré-requisitos antes da construção

“Suponha que você já foi para a montanha da definição de problemas, caminhou uma 
milha com o homem dos requisitos, lavou suas roupas na fonte da arquitetura, e, por 
fim, banhou-se nas puras águas da preparação. Então, você soube que, antes de 
implementar um sistema, você precisa entender o que esse sistema deverá fazer e como 
irá fazer.”

*'Ponto chave: Parte do seu trabalho como desenvolvedor é educar as pessoas a sua 
volta que não são desenvolvedoras sobre o processo de desenvolvimento. Este texto o 
ajudará a lidar com gerentes e chefes que ainda não viram a luz. Este texto é um 
argumento extendido para fazer o levantamento de requisitos e arquitetura - 
coletando, de forma correta, os aspectos críticos - antes de você começar a escrevar 
código, testar e debugar. Aprenda o argumento, então sente-se com o seu chefe e 
tenha uma conversa, de coração para coração, sobre o processo de desenvolvimento.'*

### Apele para a lógica
Uma das idéias chave na programação eficiente é que preparação é importante. Faz 
todo sentido do mundo, antes de você começar a trabalhar em um projeto, você 
planejar o projeto. Grandes projetos demandam mais planejamento, pequenos projetos 
demandam menos planejamento (mas demandam algum planejamento). Do ponto de vista de 
um gerente, planejar significa determinar a quantidade de tempo, numero de pessoas, 
numero de computadores e outros recursos que o projeto precisa. Do ponto de vista de 
desenvolvimento, planejar significa entender o que você quer construir, assim você 
não precisa gastar dinheiro construindo a coisa errada.
Muitas vezes (quase sempre) os usuários não tem certeza imediata sobre o que eles 
querem, outras vezes tem certeza do que querem e não do que precisam. Esses casos 
demandarão mais esforço do que parece ideal para descobrir o que os usuários do seu 
sistema realmente precisam. Porém, ainda assim, é mais barato do que construir o 
software errado, jogar tudo fora, e ter que refazer.
Também é importante pensar em como construir o sistema antes de começar a construir 
o sistema. Você não quer gastar um monte de tempo e dinheiro entrando em becos sem 
saída, especialmente quando isto eleva os seus custos.

### Apele para Analogia
Construir um sistema é como qualquer outro projeto que demanda pessoas e dinheiro. 
Se você vai construir uma casa, você faz desenhos da arquitetura e da planta antes 
sair martelando pregos. Você terá sua planta revisada e aprovada antes de começar a 
misturar e derramar concreto. Ter um plano técnico para o desenvolvimento de 
software é tão importante quanto para construir uma casa.
Você não começa decorando a árvore de natal enquanto você não a tiver montado. Você 
não começa um churrasco sem ascender a churrasqueira. Você não faz uma viagem longa 
de tanque vazio. Você não se veste antes de tomar banho, e não coloca as meias após 
colocar o tênis. Quando se trata de desenvolvimento de software, as coisas devem ser 
feitas na ordem certa também, não há porque ser diferente.
Programadores estão no topo da cadeia alimentar do desenvolvimento de software. O 
arquiteto consome os requisitos, o designer de software (não o designer de tela) 
consome a arquitetura, e o desenvolvedor consome o design.
Compare a cadeia alimentar do desenvolvimento de software com uma cadeia alimentar 
real. No mundo real, gaivotas comem salmão fresco. É nutritivo para elas porque 
salmão come outros peixes menores, e esses comem insetos do mar. O resultado é uma 
cadeia alimentar saudável. Em programação, se você tiver comida saudável em cada 
estágio da cadeia, o resultado é código saudável sendo produzido por programadores 
felizes.
Em um ambiente poluido, os insetos do mar nadaram em lixo nuclear, os peixes menores 
foram contaminados por metais pesados, e os salmões que comeram esses peixes nadaram 
em águas poulidas por vazamentos de petroleo. As gaivotas são, para o azar delas, o 
fim da cadeia alimentar, então elas não só comem o petroleo dos salmões. Elas também 
consomem os metais pesados dos peixes menores e o lixo nuclear dos insetos marinhos. 
Em programação, se os requisitos estão contaminados, eles contaminam a arquitetura, 
a arquitetura por sua vez contamina a construção. Isso leva a programadores mal-
humorados e desnutridos e um software radioativo crivado com defeitos.
Se você está planejando um projeto com requisitos que provavelmente mudarão, você 
precisará identificar, antes de começar a desenvolver, os requísitos e elementos de 
arquitetura críticos que influenciarão em cada elemento do software. Um construtor 
que está desenvolvendo um projeto de casa não precisa saber cada detalhe da casa 
antes de começar a construir a primeira casa. Mas o construtor irá olhar o terreno, 
mapear a elétrica e a hidráulica da csa, dentre outras coisas criticas. Se o 
construtor não se preparar bem, a construção provavelmente atrasará quando o 
encanamento de esgoto precisar passar por baixo da casa que já foi construida.


### Apele para dados
Estudiosos, nos ultimos 25 anos, provaran conclusivamente que vale a pena pagar para 
fazer as coisas da forma certa na primeira vez. Alterações desnecessárias são caras.
Pesquisadores da Hewlett-Packard, IBM, Hughes Aircraft, TRW, e outras organizações 
concluiram que eliminar um erro no inicio da construção permite que o retrabalho 
seja feito de 10 a 100 vezes mais barato do que quando o problema é encontrado na 
ultima parte do processo durante os testes ou após a release. Fontes: Fagan 1976; 
Humphrey, Synder, and Willis 1991; Leffingwell 1997; Willis et al. 1998; Grady 1999; 
Shull et al. 2002; Boehm and Turner 2004).
Em geral, o principio é encontrar o erro o mais próximo possível do momento em que 
ele foi introduzido. Quanto mais o defeito estiver na cadeia alimentar do software, 
mais dano ele causará em toda a cadeia. Uma vez que os requisitos são o primeiro elo 
da cadeia, defeitos de requisitos tem potencial para estar por mais tempo no sistema 
e para serem mais caros. Quanto mais no inicio da cadeia o problema for inserido, 
mais este defeito tende a se propagar pelo restante da cadeia. Isso também torna 
defeitos inseridos antes mais caros.
A maioria dos projetos tentam fazer a detecção de problemas somente no final do 
projeto, isso significa que debugar, identificar e fazer retrabalho para corrigir 
tomam mais de 50% do tempo gasto em um projeto saudável de desenvolvimento de 
software. Fontes: (Mills 1983; Boehm 1987; Cooper and Mullen 1993; Fishman 1996; 
Haley 1996; Wheeler, Brykczynski, e Meeson 1996; Jones 1998; Shull et al. 2002; 
Wiegers 2002).
Várias empresas concluiram que simplesmente focar na correção de defeitos mais cedo, 
e de forma continua no decorrer do projeto, ao invés de apenas efetuar testes ao fim 
pode cortar os custos de desenvolvimento e reuniões pela metade ou mais (fonte: 
McConnell 2004). Isto é um incentivo saudável para encontrar e consertar os 
problemas o mais cedo que você puder.

### Teste o seu chefe
Quando você pensar que seu chefe entende a importância de trabalhar com pré-
requisitos antes de ir para a etapa de desenvolvimento, tente o teste abaixo para 
ter certeza.
Quais desses pontos são profecias auto realizáveis?

- É melhor começarmos a escrever o código imediatamente porque nós teremos um monte 
de debug e correções a fazer.

- Nós não planejamos muito tempo para testar porque não iremos encontrar muitos 
defeitos.

- Nós investigamos os requisitos e o design tão exaustivamente que eu não consigo 
pensar em maiores problemas que teremos durante a escrita de código ou debug.