/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/21/fazendo-um-backup-dos-alias-em-memoria-com-savearea1-e-restarea1-maratona-advpl-e-tl-429/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe429
Faz um backup da �rea em mem�ria e depois volta (de v�rias tabelas)
@type Function
@author Atilio
@since 29/03/2023
@obs 

    Fun��o SaveArea1
    Par�metros
        Recebe um array com os alias da tabela
    Retorno
        Retorna um array com cada tabela e com as posi��es [1] Alias ; [2] �ndice Usado ; [3] Registro posicionado

    Fun��o RestArea1
    Par�metros
        Array com as posi��es igual armazenadas na SaveArea1
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe429()
    Local aArea    := SaveArea1({"SB1", "SBM", "SB5"})
     
    //Aqui suas customiza��es
     
    RestArea1(aArea)
Return

/*/{Protheus.doc} User Function A010TOK
Ponto de entrada ao clicar no bot�o Ok no Cadastro de Produtos
@type  Function
@author Atilio
@since 29/03/2023
/*/

User Function A010TOK()
    Local lRet     := .T.

    //Seleciona outra tabela
    DbSelectArea("SA1")

    //Aciona o exemplo do GetArea e RestArea
    u_zExe429()

Return lRet
