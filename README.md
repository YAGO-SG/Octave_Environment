# Uso do GNU Octave na Simulação de Propagação de Sinais Eletromagnéticos

Projeto de pesquisa desenvolvido na Universidade Federal Fluminense (UFF), com foco na utilização do GNU Octave como ambiente de computação numérica, modelagem matemática e simulação de fenômenos relacionados à propagação de sinais eletromagnéticos.

## Sobre o projeto

Este projeto investiga a utilização do ambiente de simulação matemática **GNU Octave** como ferramenta para implementação e análise de modelos matemáticos aplicados à área de Telecomunicações.

A aplicação desenvolvida permite realizar cálculos de modelos de propagação de sinais eletromagnéticos, analisar os resultados numericamente e gerar gráficos para visualizar o comportamento dos sinais em função da distância entre transmissor e receptor.

O trabalho também aborda conceitos fundamentais de computação numérica, manipulação de escalares, vetores e matrizes, além da geração de gráficos bidimensionais.

## Objetivos

* Estudar a utilização do GNU Octave na modelagem matemática e simulação computacional.
* Compreender modelos matemáticos de propagação de sinais eletromagnéticos.
* Implementar funções para realizar cálculos de modelos de radiotransmissão.
* Analisar a potência recebida e a perda de percurso dos sinais.
* Utilizar gráficos para visualizar o comportamento dos modelos.
* Explorar a aplicação da computação numérica em disciplinas de Telecomunicações.

## Modelos matemáticos implementados

### 1. Modelo de Espaço Livre — Friis

Utilizado para representar a propagação de sinais em um cenário ideal de espaço livre, sem obstáculos ou reflexões.

A potência recebida é calculada por:

$$
P_r(d) = P_t G_t G_r
\left(\frac{\lambda}{4\pi d}\right)^2
$$

Onde:

* $P_t$: potência transmitida.
* $P_r(d)$: potência recebida.
* $G_t$: ganho da antena transmissora.
* $G_r$: ganho da antena receptora.
* $\lambda$: comprimento de onda.
* $d$: distância entre transmissor e receptor.

O comprimento de onda é calculado por:

$$
\lambda = \frac{c}{f}
$$

### 2. Modelo Log-Distance

Modelo utilizado para representar a propagação em ambientes que apresentam perdas adicionais no canal de comunicação.

$$
P_r(d) = P_r(d_0)
\left(\frac{d_0}{d}\right)^n
$$

Onde:

* $P_r(d_0)$: potência recebida na distância de referência.
* $d_0$: distância de referência.
* $d$: distância entre transmissor e receptor.
* $n$: expoente de perda de percurso.

### 3. Perda de Potência em Escala Logarítmica

A perda de potência é calculada pela razão entre a potência transmitida e a potência recebida, sendo posteriormente convertida para decibéis.

$$
L_{dB} = 10\log_{10}
\left(\frac{P_t}{P_r}\right)
$$

Essa representação facilita a análise de grandes variações de potência em sistemas de telecomunicações.

## Tecnologias utilizadas

* [GNU Octave](https://octave.org/) — Computação numérica e simulação matemática.
* Linguagem de programação Octave/MATLAB.
* Manipulação de escalares, vetores e matrizes.
* Geração de gráficos bidimensionais.
* Modelagem matemática de sistemas de radiotransmissão.

## Metodologia

O desenvolvimento do projeto foi organizado nas seguintes etapas:

1. **Levantamento bibliográfico:** estudo dos conceitos de modelagem matemática e propagação de sinais eletromagnéticos.
2. **Estudo dos modelos:** compreensão das equações de Friis, Log-Distance e perda de potência.
3. **Implementação computacional:** desenvolvimento de funções independentes para cada modelo de propagação.
4. **Organização dos dados:** utilização de arquivos externos `.txt` para armazenar os parâmetros de entrada.
5. **Execução das simulações:** cálculo dos modelos para distâncias específicas e para um intervalo de 1 m a 20 m.
6. **Análise dos resultados:** apresentação dos valores numéricos e geração de gráficos para comparação dos modelos.

## Resultados

Os testes realizados demonstraram a aplicação dos modelos matemáticos implementados e permitiram analisar a variação da potência recebida e da perda de percurso em função da distância.

### Parâmetros utilizados nos testes

| Parâmetro                     |   Valor |
| ----------------------------- | ------: |
| Potência de transmissão       |     1 W |
| Frequência de operação        | 2,4 GHz |
| Ganho da antena transmissora  |       2 |
| Ganho da antena receptora     |       2 |
| Distância de referência       |     1 m |
| Expoente de perda de percurso |       3 |

### Resultados numéricos

| Modelo              |     Resultado |
| ------------------- | ------------: |
| Modelo de Friis     | 1,58 × 10⁻⁵ W |
| Modelo Log-Distance | 3,16 × 10⁻⁶ W |
| Perda de potência   |         54 dB |

Os gráficos gerados pelo GNU Octave permitem visualizar o comportamento dos modelos e a redução da potência recebida à medida que a distância aumenta.

> Os valores apresentados correspondem aos testes descritos no projeto de pesquisa. Os resultados dependem dos parâmetros de entrada utilizados.

## Como executar

### Pré-requisitos

Instale o GNU Octave em seu computador.

Download oficial:

https://octave.org/download

### Execução

1. Clone este repositório:

```bash
https://github.com/YAGO-SG/Octave_Environment
```

2. Acesse a pasta do projeto:

```bash
cd CódigoFonte
```

3. Abra o GNU Octave.

4. Navegue até a pasta do código-fonte.

5. Execute o arquivo principal da aplicação:

```octave
main.m
```

## Conceitos estudados

Durante o desenvolvimento, foram abordados os seguintes conceitos:

* Modelagem matemática.
* Computação numérica.
* Escalares, vetores e matrizes.
* Geração e análise de gráficos.
* Sistemas de comunicação.
* Transmissão e recepção de sinais.
* Propagação de ondas eletromagnéticas.
* Potência recebida e atenuação.
* Modelos de radiotransmissão.

## Conclusão

O projeto demonstrou a utilização do GNU Octave como uma plataforma para desenvolvimento de simuladores matemáticos aplicados à área de Telecomunicações.

A implementação dos modelos de Friis, Log-Distance e perda de potência possibilitou estudar o comportamento dos sinais eletromagnéticos, realizar cálculos numéricos e representar graficamente os resultados.

Além de contribuir para a compreensão dos fenômenos de propagação, o trabalho permitiu explorar a aplicação da computação numérica e da modelagem matemática no desenvolvimento de ferramentas de apoio ao ensino e à análise de sistemas de comunicação.

## Referências

* SODRÉ, U. *Modelos Matemáticos*. Universidade Estadual de Londrina, 2007.
* SIQUEIRA, A. F. de. *Octave: Seus primeiros passos na programação científica*. 2016.
* NEGRI, A. *Radiotransmissão — Propagação*. Material de aula, 2019.
* PERA, B. *Processamento de Sinais: Introdução da Telecomunicação*. Material de aula, 2016.
* WISINTAINER, B. W. *Modelo de Propagação: Espaço Livre*. Material de aula, 2016.
* GNU Octave. [Documentação oficial](https://docs.octave.org/).

## Autor

**Yago Santos Gois**

Projeto de pesquisa — Universidade Federal Fluminense (UFF)

Escola de Engenharia — Departamento de Engenharia de Telecomunicações

---

*Projeto acadêmico desenvolvido com finalidade de estudo, pesquisa e experimentação em modelagem matemática e simulação computacional.*
