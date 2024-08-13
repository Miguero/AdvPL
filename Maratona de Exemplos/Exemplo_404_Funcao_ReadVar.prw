/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/05/09/buscando-o-nome-do-campo-em-memoria-com-a-readvar-maratona-advpl-e-tl-404/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe404
Busca o nome do campo posicionado
@type Function
@author Atilio
@since 28/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=24347037
@obs 
    Fun��o ReadVar
    Par�metros
        Fun��o n�o tem par�metros
    Retorno
        Retorna o nome do campo

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe404()
    Local aArea     := FWGetArea()
    Local cCampo    := ReadVar()
    Local xConteudo := &(cCampo)
    
    //Mostra o nome do campo
    FWAlertInfo("O campo � " + cCampo, "Teste 1 ReadVar")

    //Mostra o conte�do digitado no campo
    FWAlertInfo("O conte�do � " + cValToChar(xConteudo), "Teste 2 ReadVar")

    FWRestArea(aArea)
Return

/*/{Protheus.doc} User Function MA010BUT
Ponto de entrada para adicionar fun��es no ButtonBar da Mata010
@type  Function
@author Atilio
@since 28/03/2023
@see https://tdn.engpro.totvs.com.br/pages/releaseview.action?pageId=6087592
/*/

User Function MA010BUT()
    Local aArea := FWGetArea()
    Local aButtons := {}
    
    //Adiciona um atalho no Shift+F5 para acionar o exemplo 404
    SetKey(K_SH_F5, {|| u_zExe404() })

    FWRestArea(aArea)
Return aButtons
