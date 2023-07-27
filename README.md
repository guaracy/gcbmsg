# Reinventar a roda. Característica dos programadores.



*É um problema pois temos trocentas coisas parecidas e diversas horas de talento jogadas fora e que poderia ser utilizadas para outras coisas mais nobres.*

Mas pretendo focar no lado que **não** é um problema.

No mundo real também temos coisas parecidas. Um mesmo produto alimentício pode ser diet, light, normal, etc.. Carros existem de diversas cores, características, tecnologias, formatos e preços (só não existem os populares :D ).

Diversos fatores podem levar o programador a fazer ou programa similar a outro. 

- Quem conheceu Ruby no início sabe do *code kata*. Praticar e resolver problemas faz com que o programador assimile a linguagem e se torne melhor e mais apto a resolver os problemas quando surgirem. Então resolve fazer o programa na linguagem que ele usa ou está aprendendo.

- Um programa pode conter características em demasia e ele acha que o programa deveria ser mais enxuto e resolve fazer a versão dele.

- O programa está em uma linguagem que ele não domina ou gosta e resolve fazer a versão dele.

- Apenas por não saber que já existia um programa que fazia aquilo. 

Por aí vai. Recentemente foi publicado o artigo  [Ferramenta para padronização de commits - GEC (Git Easy Commit)](https://www.tabnews.com.br/HenriikOliveira/ferramenta-para-padronizacao-de-commits-gec-git-easy-commit) que teve como ideia [Escrever commits melhores](https://www.tabnews.com.br/AllanCapistrano/escrever-commits-melhores).

Ok, programas interessantes mas .... . 

Não acho legal aqueles menus. Gostaria de algo simples e direto. Então tá. Vamos reinventar a roda.

- Gostaria de algo que executasse como: `cmd -x "correção"` e fosse traduzido para `git commit -m "FIX : correção"`.  

- Gostaria que ele fosse compilado e linkado estaticamente (não dependesse de bibliotecas externas)

Testei com Nim e ficou com +900K. Testei com FreePascal e ficou com +800K.  Resolvi fazer com FreePascal. 






