/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/03/buscando-as-filiais-que-o-usuario-tem-acesso-com-a-loadfils-maratona-advpl-e-tl-332/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe332
Retorna um array com as filiais que o usu�rio logado tem acesso
@type Function
@author Atilio
@since 12/03/2023
@obs 

    Fun��o LoadFils
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Retorna um array com os c�digos das filiais

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe332()
    Local aArea     := FWGetArea()
    Local aFiliais  := {}
    
    //Busca as filiais que o usu�rio tem acesso
    aFiliais := LoadFils()
    FWAlertInfo("O usu�rio tem acesso a '" + cValToChar(Len(aFiliais)) + "' filial(is)", "Teste LoadFils")

    FWRestArea(aArea)
Return
