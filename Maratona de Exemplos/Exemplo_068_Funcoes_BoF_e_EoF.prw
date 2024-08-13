/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2023/10/15/validando-o-comeco-ou-fim-de-um-alias-com-as-funcoes-bof-e-eof-maratona-advpl-e-tl-068/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe068
Exemplo para verificar se esta no come�o ou no fim de uma tabela
@type Function
@author Atilio
@since 06/12/2022
@see https://tdn.totvs.com/display/tec/Bof e https://tdn.totvs.com/display/tec/EOF
@obs 
    Fun��o BoF
    Retorno
        + lRet  , L�gico  , .T. se estiver no come�o do alias ou .F. se estiver no fim

    Fun��o EoF
    Retorno
        + lRet  , L�gico  , .T. se estiver no fim do alias ou .F. se estiver no come�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe068()
    Local aArea      := FWGetArea()
    Local nTot
    
    DbSelectArea('SB1')
    SB1->(DbSetOrder(1)) //B1_FILIAL + B1_COD
    
    //Posiciona no fim da tabela
    SB1->(DbGoBottom())
    nTot := 0

    //Enquanto n�o estiver no come�o da tabela
    While ! SB1->(BoF())
        nTot++
        
        SB1->(DbSkip(-1))
    EndDo
    FWAlertInfo("Foram processados "+cValToChar(nTot)+" registros.", "Teste BoF")

    //Posiciona no come�o da tabela
    SB1->(DbGoTop())
    nTot := 0

    //Enquanto n�o estiver no fim da tabela
    While ! SB1->(EoF())
        nTot++
        
        SB1->(DbSkip())
    EndDo
    FWAlertInfo("Foram processados "+cValToChar(nTot)+" registros.", "Teste EoF")

    FWRestArea(aArea)
Return
