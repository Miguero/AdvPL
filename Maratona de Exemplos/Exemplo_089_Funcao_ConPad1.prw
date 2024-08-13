/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/11/05/abrindo-uma-consulta-padrao-da-sxb-usando-a-funcao-conpad1-maratona-advpl-e-tl-089/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe089
Exemplo de como abrir uma tela de consulta padr�o (SXB)
@type Function
@author Atilio
@since 09/12/2022
@obs 
    Fun��o Conpad1
    Par�metros
        + Compatibilidade
        + Compatibilidade
        + Compatibilidade
        + Nome da consulta padr�o / espec�fica da SXB
        + Express�o de retorno no lugar da usada na SXB
        + Compatibilidade
        + Define se ser� s� visualiza��o (.T.) ou se ter� outros bot�es como Incluir (.F.) dependendo do cadastro na SXB
        + Conte�do que j� deixar� a consulta posicionada
        + Define se o LookUp veio de um campo
        + Conte�do respectivo ao cVar
    Retorno
        + .T. se o usu�rio clicou em confirmar ou .F. se ele cancelou a tela

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe089()
    Local aArea      := FWGetArea()
    Private cCodPesq := "C00002"

    DbSelectArea("SA1")
    SA1->(DbSetOrder(1)) // Filial + C�digo + Loja

    //Mostra a consulta padr�o de nome SA1 (na SXB)
    If ConPad1(, , , "SA1")
        
        //Se a consulta foi confirmada, mostra o Cliente selecionado
        FWAlertSuccess("Cliente selecionado foi " + aCpoRet[1], "Teste Conpad1")
        
    EndIf

    //Mostra a consulta padr�o de nome SA1 (na SXB) j� posicionando no Cliente de c�digo C00002
    If ConPad1(, , , "SA1", /*cCampoRet*/, /*lGet*/, /*lOnlyView*/, "cCodPesq")
        
        //Se a consulta foi confirmada, mostra o Cliente selecionado
        FWAlertSuccess("Cliente selecionado foi " + aCpoRet[1], "Teste Conpad1")
        
    EndIf

    FWRestArea(aArea)
Return
