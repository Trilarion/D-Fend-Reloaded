
-----------------------------------
DOSBox 0.73 em Portugu�s/Brasileiro
-----------------------------------

Traduzido por Lex Leite / ableite@msn.com

A Vers�o em portugu�s para a galera brazuka!!

1. Notas do autor sobre tradu��o
2. Altera��o do idioma
3. Futuras vers�es
4. Agradecimentos
5. Dicas (Windows XP) (INICIANTES, LEIAM ISTO)
6. M�todo F�cil (Altamente recomendado para vers�o 0.73)

Qualquer d�vida na instala��o da tradu��o contate-me.

-------------------------------------
1. Notas do autor sobre tradu��o
-------------------------------------
a. A vers�o 0.73 do DosBOX possui um bug. Quando o arquivo de configura��o �
   criado com a tradu��o a estrutura do texto interno fica incorreta.
   Provavelmente isso n�o ser� corrigido nessa vers�o. Recomendo que use o j�
   traduzido incluido nesse arquivo ZIP. (dosbox-0.73.conf)

b. A tradu��o do arquivo de idioma do DOSBox est� completa. J� comecei o trabalho
   de traduzir o arquivo LeiaMe.TXT (README.TXT) do DOSBox.
   Por�m uma nova vers�o foi feita, ent�o preciso rever alguns textos.

c. A tradu��o foi feita com base no arquivo original em ingl�s e com o arquivo de
   tradu��o em espanhol o que ajudou para deixar a tradu��o ainda melhor.

d. N�o pude testar certas telas do DOSBox. Telas como a inicial onde existe uma
   grande caixa azul, podem estar malfeitas por conta da numera��o que pode ter
   ficado errada, por�m creio que esteja tudo correto.


-----------------------------------------------------
2. Para alterar o idioma do DOSBox para Portugu�s:
-----------------------------------------------------
   Aten��o: A pasta onde se encontra o arquivo de configura��o do DosBOX foi
   alterada na vers�o 0.73 do DosBOX. Agora a pasta esta localizada em:
   "C:\Documents and Settings\Usuario\Configura��es locais\Dados de aplicativos\DOSBox"
   no windows XP. No vista dever� estar numa pasta de caminho semelhante.
   Substitua "usuario" pelo seu nome do seu usuario no computador.
   Sempre que eu me referir a pasta de configura��o do DosBOX, v� at� a pasta citada acima.

   Para facilitar a instala��o da tradu��o simplesmente copie os 2 arquivos
   "portuguese.lang" e "dosbox-0.73.conf" para a pasta de configura��o
   do DosBOX. (M�todo f�cil)

   Se essa pasta n�o existir, abra o DosBOX e logo em seguida feche-o. Ela dever�
   ter sido criada pelo pr�prio programa agora.
   

a. Copie o arquivo portuguese.lang inclu�do no arquivo compactado para a
   a pasta de configura��o do DOSBox.

b. Abra o arquivo de configura��o do DOSBox (Por Padr�o, dosbox-0.73.conf),
   localizado na mesma pasta, com um editor de texto comum. Na se��o [dosbox] h� uma linha
   "language=". Adicione o nome do arquivo com a tradu��o.
   Se esta linha n�o for encontrada, simplesmente adicione-a.
   Ex: language=portuguese.lang

c. Para que o arquivo de configura��o tamb�m fique em portugu�s, uma vez feito
   o passo anterior, escreva dentro do DOSBox no drive Z: "CONFIG -writeconf arquivo".
   Isto criar� um novo arquivo de configura��o com nome "arquivo", na pasta do DOSBox,
   com os textos em portugu�s. Delete o arquivo de configura��o original e substitua
   pelo rec�m criado, mudando o nome deste para o do original (Delete o arquivo
   dosbox.conf original e mude o nome do arquivo rec�m criado para "dosbox.conf").
   OBS. NA VERS�O 0.73 EXISTE UM BUG NESSE COMANDO. A IMPRESS�O DO ARQUIVO FICA
   INCORRETA. UTILIZE O ARQUIVO CONTIDO NO ZIP.


d. Para que os caracteres fiquem corretos � necess�rio a altera��o do codepage do
   Dosbox. No DOSBox digite "KEYB BR" (sem as aspas). O teclado agora dever� ser o
   ABNT2 e os caracteres dever�o aparecer corretamente.
   Ou adicione "br" no arquivo de configura��es do dosbox na se��o [dos] em keyboard
   layout. keyboardlayout=br
   OBS. H� um BUG no KEYB, a tecla "?" n�o funciona.


-----------------------
3. Futuras vers�es
-----------------------

   Dei o melhor de mim nesta tradu��o e espero que n�o contenha erros. Por�m posso
   ter deixado passar alguma letrinha ou acento. Se voc� detectar algum erro, poder�
   me contatar pelo meu e-mail (ableite@msn.com) para que eu possa consert�-lo e numa
   futura vers�o o DOSBox fique corretamente traduzido.


-----------------------
4. Agradecimentos
-----------------------

   Obrigado a equipe do DOSBox por ter feito esse programa maravilhoso, onde eu posso
   jogar jogos da �poca em que eu era um garotinho no Windows XP/Vista, que n�o da mais
   suporte ao verdadeiro MS-DOS.

   Obrigado a Gustavo Queipo de LLano �lvarez, pois usei seus arquivos de tradu��o em
   espanhol. Arquivos que me ajudaram a criar uma tradu��o ainda melhor para o portugu�s.

   Obrigado aos meus colegas que me incentivaram!

   E um Obrigado reservado, para caso eu tenha esquecido de colocar aqui algu�m que
   me ajudou.

-------------------------------
5. Dicas (Windows XP/Vista)
-------------------------------

   Para quem est� come�ando a usar o DosBOX agora e quiser come�ar a jogar antes de
   aprender a us�-lo completamente fa�a o seguinte:

   Abra o arquivo de configura��es do DosBOX.
   Na ultima linha desse arquivo est� se��o de auto execu��o [autoexec] de comandos
   que ser�o sempre executados quando o DOSBox for iniciado.
   Logo abaixo da �ltima linha copie e cole o texto abaixo:

----corte aqui----

mount c c:\
mount d d:\ -t cdrom
c:
dir/p

----corte aqui----

   Obviamente o "c c:\" � para o HD que estiver na unidade c: e o "d d:\" para onde
   estiver a unidade de cd-rom. No windows geralmente essas letras s�o padr�o, logo,
   basta copiar e colar. Se n�o, altere as letras para as unidades corretas.


-----------------------------------------------
6. M�todo F�cil (Recomendado para vers�o 0.73)
-----------------------------------------------

   PODE N�O FUNCIONAR EM ALGUNS COMPUTADORES!!!
   Copie os arquivos "dosbox-0.73.conf" e "portuguese.lang" para a pasta de
   configura��o do DosBOX.
   Abra o execut�vel.

   Se algum erro ocorrer/n�o funcionar coloque o arquivo "dosbox-0.73B.conf" na pasta de
   configura��o do Dosbox, delete o arquivo "dosbox-0.73.conf" e renomeie o
   "dosbox-0.73B.conf" para "dosbox-0.73.conf".
   Abra o execut�vel.



