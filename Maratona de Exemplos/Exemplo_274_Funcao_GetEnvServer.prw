/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/03/05/buscando-informacoes-de-funcoes-com-a-getfuncarray-maratona-advpl-e-tl-275/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe274
Retorna o nome do ambiente (apo / environment) que esta rodando o sistema
@type  Function
@author Atilio
@since 21/02/2023
@see https://tdn.totvs.com/display/tec/GetEnvServer
@obs 

    Fun��o GetEnvServer
    Par�metros
        N�o possui par�metros
    Retorno
        + cRet     , Caractere      , Nome do Environment
    
    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe274()
    Local aArea      := FWGetArea()
    Local cMensagem  := ""

    //Busca a informa��o e exibe
    cMensagem := "O nome do ambiente que esta rodando o sistema �: " + GetEnvServer()
    FWAlertInfo(cMensagem, "Teste GetEnvServer")

    FWRestArea(aArea)
Return
