---
title: Aprendendo Mais Facilmente a Programar
author: Ricardo da Verdade Silva
layout: post
tags:
 - desenvolvimento básico
 - algoritmos
 - lógica de programação
 - nível júnior
 - passos de bebê
comments: true
resume:
  Muitos desenvolvedores que estão iniciando suas carreiras tem dificuldades básicas no que diz respeito
  ao processo de aprendizado.
  Veja, ou revise, os pontos mais básicos e mais importantes no aprendizado de qualquer linguagem de programação.

lang: pt-BR
guid: e3bc6182-8ef2-498e-a67f-713f21cb20f2
---

Tenho visto a dificuldade que muitos iniciantes no estudo de algoritmos e linguagens de programação tem.
Estou na minha segunda faculdade, primeiro cursei Desenvolvimento de Jogos na FATEC Carapicuíba (e infelizmente não conclui, mas isso fica para outro post),
e agora estou fazendo Análise e Desenvolvimento de Sistemas na FATEC São Paulo.
No terceiro semestre do curso de análise de sistemas, eu constatei exatamente a mesma situação que presenciei no terceiro semestre do curso de desenvolvimento de jogos:
após dois semestres tendo lógica e linguagens de programação, muita gente ainda tem muita dificuldade para desenvolver o raciocínio e escrever algoritmos simples.
Quero deixar claro que eu não tenho nenhum estudo científico para referênciar e embasar a minha afirmação, ela se dá unicamente pela minha experiência pessoal.
Então, a que se deve toda esta dificuldade? Programar é extremamente difícil? Os professores são muito ruins? Os alunos são muito ruins? Em minha opinião, a resposta para
todas as perguntas é não. O que eleva a dificuldade no aprendizado e no desenvolvimento da lógica de programação, é justamente a falta de atenção que é dada aos elementos mais simples
do desenvolvimento e que estão presentes em praticamente todas as linguagens de programação (eu desconheço alguma que não os tenha, se você conhecer, por favor, poste nos comentários).

## Elementos Básicos
Todo algoritmo que eu conheço, desenvolvido em qualquer linguagem de programação que eu conheço, são básicamente e fundamentalmente constituidos de:

- Operadores Aritméticos

- Operadores Lógicos

- Controladores de Fluxo

- Estruturas de Repetição

### Operadores Aritméticos
Operadores aritméticos são os tão conhecidos operadores matemáticos, que já utilizamos no nosso dia-a-dia e aprendemos desde o primeiro dia
em que colocamos os pés na escola.

Os quatro operadores básicos que toda linguagem tem são: + (soma), - (subtração), * (multiplicação), / (divisão).

Além dos operadores básicos, existem outros operadores que são extremamente úteis, por exemplo o operador mod, ou resto de divisão
(representado pelo símbolo % na maioria das linguagens). Por exemplo, podemos utilizar este operador para saber se um número é par:

- se numero % 2 for igual a 0, significa que esse número tem divisão exata por 2, logo ele é par.

Algumas linguagens possuem operadores matemáticos implementados. Por exemplo, em python podemos utilizar o símbolo ** para representar potência:

{% highlight python lineos %}
a = 2**2
b = 2**3
c = 10**2

print(str(a)) #4
print(str(b)) #8
print(str(c)) #100
{%endhighlight %}

Minha recomendação é: procure a documentação básica da línguagem que você quer aprender e verifique quais operadores aritméticos eles possuem. 
A disponibilidade, ou não, de um determinado operador vai impactar diretamente a forma como você irá desenvolver o seu algoritmo.

### Controladores de Fluxo
O que são os controladores de fluxo? Para que servem? Quem são eles?

Como o próprio nome sugere, eles servem para controlar o fluxo de uma aplicação. 

É através deles que o seu programa terá a inteligência para tomar decisões. São os controladores de fluxo que permitirão ao seu programa
fazer algo, ou não. Os controladores de fluxo são:
	
- if - Sempre que uma determinada condição for verdadeira, ou não falsa (veremos isso nos exemplos), tudo que está especificado dentro do bloco do if será executado.

- else - O else é a situação contrária ao if. Um if não precisa de um else para existir, mas o else precisa do if. O else não executa nenhuma verificação lógica, sempre que a condição do if
	  for falsa, o else (se existir) será executado.

Vejamos o seguinte problema:

> *Um colégio precisa de um programa para verificar se os seus alunos foram aprovados em determinada disciplina. De acordo com as regras desse colégio:*
>
> - *Cada aluno é avaliado semestralmente, ou seja, possui 2 notas.*
>
> - *A média do aluno é a média aritmética das notas. Ou seja, as duas notas somadas e o resultado dividido por dois.*
>
> - *Todas as notas são números inteiros (a fim de simplificar o nosso exemplo)*
>
> - ***SE** o aluno tiver nota **maior ou igual** a 6, ele será aprovado, **senão** será reprovado.*

Sempre, eu digo sempre, que você for tentar desenvolver um algoritmo, preste atenção ao problema a ser resolvido. Tente escrever um texto dos requisitos, do cenário, a partir dele já é possível extrair
dados importantes ao funcionamento do nosso algoritmo.

Como iremos resolver o problema acima? Recomendo que você, leitor, tente descrever o passo a passo deste algoritmo antes de continuar lendo o passo a passo abaixo:

1. Definiremos a **quantidade de notas** como sendo 2

2. Obteremos a **soma** entre a **nota1** e a **nota2**

3. Obteremos a **média** através da divisão da **soma** pela **quantidade de notas**

4. **Se** a **média** for **maior ou igual** a 6, então o aluno foi aprovado

5. **Senão**, o aluno foi reprovado

Esta é a estrutura básica do nosso algoritmo. Como traduzimos isso para linguagens de programação?

{% highlight ruby linenos %}
#ruby
def verificar_aluno_aprovado(nota1, nota2)
   quantidade_de_notas = 2
   soma = nota1 + nota2
   media = soma/quantidade_de_notas
   if media >= 6
      return true
   else
      return false
   end
end
{% endhighlight %}

{% highlight python linenos %}
#python
def verificar_aluno_aprovado(nota1, nota2)
   quantidade_de_notas = 2
   soma = nota1 + nota2
   media = soma/quantidade_de_notas
   if media >= 6
      return true
   else
      return false
{% endhighlight %}

{% highlight csharp linenos %}
//c#
public static bool VerificarAlunoAprovado(int nota1, int nota2)
{
   int quantidadeDeNotas = 2
   int soma = nota1 + nota2;
   int media = soma/quantidadeDeNotas;
                                        
   if(media >= 6)
   {                                    
	  return true;
   }
   else
   {
      return false;
   }
}
{% endhighlight %}

Continua na parte 2...