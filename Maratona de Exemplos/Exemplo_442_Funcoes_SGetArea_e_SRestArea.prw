/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/28/fazendo-um-backup-dos-alias-abertos-com-a-sgetarea-e-srestarea-maratona-advpl-e-tl-442/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe442
Faz um backup da �rea em mem�ria e depois volta (de v�rias tabelas)
@type Function
@author Atilio
@since 31/03/2023
@obs 

    Fun��o SGetArea
    Par�metros
        Recebe o nome do Array que ir� armazenar as �reas
        Recebe o alias que dever� ser adicionado no Array
    Retorno
        Retorna um array com cada tabela e com as posi��es [1] Alias ; [2] �ndice Usado ; [3] Registro posicionado

    Fun��o SRestArea
    Par�metros
        Array com as posi��es igual armazenadas na SGetArea
    Retorno
        N�o tem retorno

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe442()
    Local aArea    := {}
    
    //Adiciona as �reas no Array
    SGetArea(aArea, "SB1")
    SGetArea(aArea, "SBM")
    SGetArea(aArea, "SB5")
     
    //Aqui suas customiza��es
     
    SRestArea(aArea)
Return

/*/{Protheus.doc} User Function A010TOK
Ponto de entrada ao clicar no bot�o Ok no Cadastro de Produtos
@type  Function
@author Atilio
@since 31/03/2023
/*/

User Function A010TOK()
    Local lRet     := .T.

    //Seleciona outra tabela
    DbSelectArea("SA1")

    //Aciona o exemplo do GetArea e RestArea
    u_zExe442()

Return lRet
