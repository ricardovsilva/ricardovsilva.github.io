---
author: Ricardo da Verdade Silva

layout: post
tags:
- Orientação a Objetos
- Profissionalizando
- P.O.O.
- Programação

comments: 
  true

resume: 
  É inegável que saber conceitos básicos de programação nos dá o poder de resolver, de forma assertiva, muitos problemas do cotidiano. Além disso, mudamos completamente nossa forma de pensar. Mas programar é muito mais do que o básico. Programar é uma arte que, sempre, pode ser melhorada.
  Se você quer sair do amadorismo, e começar a ser profissional. Este post é para você!
  
lang: pt-BR
guid: 44cf037c-087a-4ad5-8e76-0732edc8afe1
---
Sou programador profissional a pouco mais de 3 anos. Apesar de parecer pouco tempo, já vi muita coisa deste mercado. Já vi muitos profissionais com 15 anos de experiência, diversos títulos, e que até hoje não sabem programar de forma REALMENTE orientada a objetos.

Olhe a sua volta, veja os seus colegas de universidade ou de trabalho, olhe para si mesmo e questione-se: eu estou fazendo da melhor forma possível?

Convido-lhe, a junto comigo, aprender um pouquinho mais e adicionar a sua bagagem intelectual um diferencial de mercado. Vamos aprender algo que não depende de uma linguagem de programação eslecificade REALMENTE programar de forma orientada a objetos. Este é um conhecimento que pode ser levado para qualquer linguagem de programação.

Neste primeiro post eu abordo:

  - O que é orientação a objetos?
  - Classes
  - Métodos
  - Propriedades/Atributos
  - Instâncias (objetos)
  - Os pilares da Orientação a Objetos
  - Herança
  - Polimorfismo
  - Encapsulamento

Faça um ótimo proveito e, principalmente, divirta-se !

## O que é Orientação a Objetos (O.O.)?
Orientação a objetos é uma forma de programar que, praticamente, independe de linguagem (uma vez que a maioria das linguagens de programação suportam a orientação a objetos).

Consiste em programar de forma que, cada trecho do seu código tente ser um espelho de algo que existe no mundo real.

A O.O. nos permite reaproveitar o nosso código sem precisar copiar e colar, além de organizar o código de forma que ele seja expansível. Graças a O.O. temos softwares de tal complexidade que, seria praticamente impossível fazer de forma estruturada (programação convencional, linha atrás de linha).

Toda linguagem de programação que suporta a orientação a objetos possuem, elementarmente, suporte a criação de quatro elementos de programação. São eles: Classes, Métodos, Propriedades e Instâncias.

### Métodos
Os métodos são funções, algoritmos, que executam uma determinada ação. O que diferencia um método de uma simples função, é que um método, normalmente, altera o estado (PROPRIEDADES) de um determinado objeto.
Métodos SEMPRE, fundamentalmente, são ações. Sempre descreva um método com um verbo de AÇÃO.

Se pensarmos em um carro, ele teria métodos como: acelerar, freiar, ligar, dentre outras.

Outro exemplo, mais voltado a sistemas, um **cliente de banco** pode **sacar dinheiro**, **depositar**, **solicitar empréstimo**, **comprar produtos**.

>*Caso esteja confuso para você, pense em um método como sendo uma função ou um algoritmo qualquer (na prática não há muita diferença).
Mas não esqueça, métodos são sempre VERBOS DE AÇÃO.*


### Propriedades (ou atributos)
São **características**, qualidades, daquilo que estamos tentando representar.

Se pensarmos em um carro, temos propriedades como: material, potência, velocidade máxima, velocidade atual, capacidade de combustivel.

Já utilizando o exemplo do cliente do banco, teremos propriedades como: nome, endereço, saldo bancário, limite de empréstimo, etc.

### Classe
Uma classe, nada mais é do que um mapeamento de um objeto do mundo real, porém a classe NÃO é o objeto. A classe é como se fosse um molde, uma receita.

Toda classe possui **métodos** (ações) e **propriedades** (qualidades).

Toda classe também possui um, ou mais, método especial que é invocado quando criamos uma **instância** desta classe (não se preocupe, explicarei mais a frente o que é uma instância). Este método especial é chamado de **construtor**. O construtor é o único método que não é um verbo de ação, mas sim o nome da própria classe.

Ao criarmos uma classe de um carro, nós estamos descrevendo o que um carro TEM (propriedades) e o que um carro pode FAZER (métodos). Vejamos um exemplo:

<code-block csharp ruby>
<div>
{% highlight csharp linenos %}
public class Carro
{
  //Essas são as nossas propriedades
  public int VelocidadeAtual;
  public int VelocidadeMaxima;
  public int TaxaDeAceleracao;
  public string Modelo;
  public string NomeFabricante;

  public Carro()
  {
    //Podemos definir algumas coisas aqui quando
    //cada carro for criado. Este é o nosso construtor.
  }

  //Este é o nosso método, repare que ele aumenta
  //a velocidade atual com a taxa de aceleração.
  public void Acelerar()
  {
    VelocidadeAtual += TaxaDeAceleracao;
  }
}
{% endhighlight %}
</div>
<div>
{% highlight ruby linenos %}
class Carro
  #definimos os atributos
  attr_accessor :velocidadeAtual,
                :velocidadeMaxima, 
                :taxaDeAceleracao, 
                :modelo,
                :nomeFabricante

  def initialize()
    #inicializamos os atributos
    @velocidadeAtual = 0
    @velocidadeMaxima = 0
    @taxaDeAceleracao = 0
    @modelo = ""
    @nomeFabricante = ""
  end
 
 def acelerar()
   @velocidadeAtual += @taxaDeAceleracao
 end
end
{% endhighlight %}
</div>
</code-block>

### Instância
A instância é o objeto propriamente dito. Pegamos a nossa "receita" (**classe**) do carro, e a partir dela criamos vários carros. Cada carro criado é uma instância.

> É importante ressaltar que cada instância possui suas próprias propriedades, com valores independentes.

Por exemplo:

<code-block csharp ruby>
<div>
{% highlight csharp linenos %}

//Este método é o nosso programa principal.
public void main()
{
  var carro1 = new Carro(); //criamos uma instância de Carro
  var carro2 = new Carro();

  carro1.Modelo = "Celta 1.0";
  carro1.Fabricante = "Chevrolet";
  carro1.VelocidadeMaxima = 120;
  carro1.TaxaDeAceleracao = 20;
  carro1.VelocidadeAtual = 0;

  carro2.Modelo = "Eclipse";
  carro2.Fabricante = "Mitsubishi";
  carro2.VelocidadeMaxima = 220;
  carro2.TaxaDeAceleracao = 40;
  carro2.VelocidadeAtual = 0;

  carro1.Acelerar();
  Console.WriteLine(carro1.VelocidadeAtual); //Será impresso 20

  carro2.Acelerar();
  Console.WriteLine(carro2.VelocidadeAtual); //Será impresso 40
}
{% endhighlight %}
</div>
<div>
{% highlight ruby linenos %}

#Este método é o nosso programa principal.
def main()
{
  carro1 = Carro.new #criamos uma instância de Carro
  carro2 = Carro.new

  carro1.modelo = "Celta 1.0"
  carro1.nomeFabricante = "Chevrolet"
  carro1.velocidadeMaxima = 120
  carro1.taxaDeAceleracao = 20
  carro1.velocidadeAtual = 0

  carro2.modelo = "Eclipse"
  carro2.nomeFabricante = "Mitsubishi"
  carro2.velocidadeMaxima = 220
  carro2.taxaDeAceleracao = 40
  carro2.velocidadeAtual = 0

  carro1.acelerar
  puts carro1.velocidadeAtual #Será impresso 20

  carro2.acelerar();
  puts carro2.velocidadeAtual #Será impresso 40
}
{% endhighlight %}
</div>
</code-block>

## Os pilares da orientação a objetos
A orientação a objetos tem três pilares básicos: herança, polimorfismo e encapsulamento. Não é correto afirmar que programamos de forma orientada a objetos só porque criamos meia dúzia de classes para separar nossa lógica. É importantiíssimo respeitar esses três pilares.

>*Não se preocupe se não entende-los agora. O importante é saber que eles existem e ter uma breve noção do que é cada um. Nos próximos posts veremos na prática cada um deles acontecendo.*

### Herança
A herança é a capacidade que uma classe tem de "aprender", ou "absorver" capacidades de outras classes. A herança nos poupa muita escrita de código.
Imagine a seguinte situação, uma **pessoa** pode ser representada pela seguinte classe:

<code-block csharp ruby>
<div>
{% highlight csharp linenos %}
public class Pessoa
{
  public int Idade;
  public string Nome;
  public string CPF;
  public string RG;

  //Este é o nosso construtor.
  public Pessoa()
  {
    //Lógica de inicialização da pessoa aqui.
  }

  public void Caminhar()
  {
    //Lógica para fazer a pessoa caminhar.
  }

  public void Comer()
  {
    //Lógica para comer.
  }
}
{% endhighlight %}
</div>
<div>
{% highlight ruby linenos %}
class Pessoa
    #definimos os atributos
  attr_accessor :idade,
                :nome,
                :CPF,
                :RG

  #Este é o nosso construtor
  def initialize()
    @idade = 0
    @nome = ""
    @CPF = ""
    @RG = ""
  end
  
  def caminhar()
    #Lógica para fazer a pessoa caminhar.
  end

  def comer()
    #Lógica para comer.
  end
end
{% endhighlight %}
</div>
</code-block>

Podemos ver que cada pessoa possui suas propriedades (idade, nome, cpf e rg) e ações (caminhar e comer).
Retomando o exemplo do cliente de banco, podemos dizer que todo cliente de banco É uma pessoa. Logo, cliente de banco pode HERDAR de pessoa.

<code-block csharp ruby>
<div>
{% highlight csharp linenos %}
public class ClienteDeBanco : Pessoa
{
  public string Agencia;
  public string ContaCorrente;

  public ClienteDeBanco()
  {
    //Aqui vai nossa lógica de inicialização
  }

  public int EfetuarSaque()
  {
    //Lógica para efetuar saque.
  }
}
{% endhighlight %}
</div>
<div>
{% highlight ruby linenos %}
class ClienteDeBanco < Pessoa
  attr_accessor :agencia,
                :contaCorrente

  def initialize
    @agencia = ""
    @contaCorrente = ""
  end

  def efetuarSaque
    #Lógica para efetuar saque.
  end
end
{% endhighlight %}
</div>
</code-block>

O que exatamente o código acima significa? Significa que, toda instância de ClienteDeBanco que criarmos, poderá fazer tudo o que uma Pessoa faz (caminhar e comer), terá as mesmas propriedades que uma Pessoa tem (idade, cpf, rg, nome), e além disso ele também terá uma Agência e uma Conta Corrente, além de poder efetuar saques.

### Polimorfismo
Polimorfismo, basicamente falando, é a capacidade que um objeto, de um determinado tipo, tem de se transformar em outro, ou se passar por outro. 

É importante saber que é possível o Polimorfismo acontecer, e que toda linguagem O.O. lhe permite fazer isso. 

> Não se preocupe sobre COMO ou QUANDO você irá usar o polimorfismo. Veremos isso mais a frente. 

### Encapsulamento 
Encapsulamento é a capacidade do objeto (ou de um sistema) de "esconder" dos outros objetos tudo aquilo que não é relevante a eles. 

Você deve ter reparado que nos códigos de exemplo deste post, a palavra **public** apareceu bastante. Esta palavra é o atributo de visibilidade de uma propriedade ou método. 

> Dizer que algo, em um sistema O.O. é público, significa dizer que qualquer classe pode acessar aquilo. 

Além do **public** poderíamos usar o **private**. Mas quando usar o private? Quando vamos escrever algum método (ou propriedade) que "ninguém" mais do seu sistema precisa conhecer. 

Voltemos a falar do carro, quando você entra no carro e vira a chave, você está dando para ele o comando de "Ligar", para ligar, é necessário energizar o motor, dar a partida, injetar gasolina, dentre outras coisas que o carro faz para você. O que o carro faz é **encapsular** todas essas funções. Você não precisa saber que elas acontecem e muito menos como acontecem (a menos que você seja um apaixonado por mecânica), você só precisa saber que ao virar a chave o carro ligará. 

Como isso ficaria em termos de código? 

<code-block csharp ruby>
<div>
{% highlight csharp linenos %} 
public class Carro
{
  //Essas são as nossas propriedades
  public int VelocidadeAtual;
  public int VelocidadeMaxima;
  public int TaxaDeAceleracao;
  public string Modelo;
  public string NomeFabricante;

  public Carro()
  {
  }

  public void Acelerar()
  {
    VelocidadeAtual += TaxaDeAceleracao;
  }

  public void Ligar() 
  {
    DarPartida();
    LigarOMotor();
    LigarPainel();
  } 

  private void DarPartida() 
  {
    //Lógica para dar a partida
  } 

  private void LigarOMotor() 
  {
    //Lógica para ligar o motor
  } 

  private void LigarPainel() 
  {
    //Lógica para liga o painel
  } 
}
{% endhighlight %} 
</div>
<div>
{% highlight ruby linenos %} 
class Carro
  attr_accessor :velocidadeAtual,
                :velocidadeMaxima,
                :taxaDeAceleracao,
                :modelo,
                :nomeFabricante

  def initialize()
    @velocidadeAtual = 0
    @velocidadeMaxima = 0
    @taxaDeAceleracao = 0
    @modelo = ""
    @nomeFabricante = ""
  end
  
  def acelerar()
    @velocidadeAtual += @taxaDeAceleracao
  end
  
  def ligar()
    darPartida
    ligarOMotor
    ligarPainel
  end
  
  def darPartida()
    #Lógica para dar a partida
  end
  
  def ligarOMotor()
    #Lógica para ligar o motor
  end
  
  def ligarPainel()
    #Lógica para ligar o painel
  end
  
  #Aqui tornamos nossos métodos privados
  private :darPartida, :ligarOMotor, :ligarPainel
end
{% endhighlight %} 
</div>
</code-block>

## Conclusão 
Neste artigo eu tentei explicar e exemplificar a base da orientação a objetos. Mas programar de forma realmente orientada a objetos é bem mais do que separar funções em classes e ter alguma estrutura de herança. 
Nos próximos artigos dessa série eu abordarei os princípios do S.O.L.I.D e ao final, a cereja do nosso bolo serão as metodologias de teste T.D.D. e B.D.D., portanto, não perca! 

Dúvidas, sugestões? Deixe o seu comentário. 
