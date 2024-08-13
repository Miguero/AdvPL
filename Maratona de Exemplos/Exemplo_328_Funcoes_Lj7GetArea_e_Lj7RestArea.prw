/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/01/fazendo-backup-da-memoria-e-restaurando-com-lj7getarea-e-lj7restarea-maratona-advpl-e-tl-328/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe328
Faz um backup da �rea em mem�ria e depois volta (de v�rias tabelas)
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o Lj7GetArea
    Par�metros
        Recebe um array com os alias da tabela
    Retorno
        Retorna um array com cada tabela e com as posi��es [1] Alias ; [2] �ndice Usado ; [3] Registro posicionado

    Fun��o Lj7RestArea
    Par�metros
        Array com as posi��es igual armazenadas na Lj7GetArea
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe328()
    Local aArea    := Lj7GetArea({"SB1", "SBM", "SB5"})
     
    //Aqui suas customiza��es
     
    Lj7RestArea(aArea)
Return

/*/{Protheus.doc} User Function A010TOK
Ponto de entrada ao clicar no bot�o Ok no Cadastro de Produtos
@type  Function
@author Atilio
@since 20/02/2023
/*/

User Function A010TOK()
    Local lRet     := .T.

    //Seleciona outra tabela
    DbSelectArea("SA1")

    //Aciona o exemplo
    u_zExe328()

Return lRet
