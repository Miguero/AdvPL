/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/01/21/buscando-o-logo-da-empresa-com-as-funcoes-fisxlogo-e-flogoemp-maratona-advpl-e-tl-186/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe186
Retorna o logo da empresa
@type Function
@author Atilio
@since 21/12/2022
@obs 
    Fun��o FisxLogo
    Par�metros
        + Tipo do logo (1 = da empresa ; 2 = da TOTVS)
    Retorno
        + Retorna o nome do arquivo

    Fun��o fLogoEmp
    Par�metros
        + Nome do arquivo
        + Tipo do logo (1 = da empresa ; 2 = da TOTVS)
    Retorno
        Fun��o n�o tem retorno



    Se o tipo for 1, ele ir� retornar:
        LGRL + Empresa + Filial (exemplo: LGRL010101.bmp)
        ou
        LGRL + Empresa (exemplo: LGRL01.bmp)
    
    Se o tipo for 2, ele ir� retornar:
        LogoSiga.bmp

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe186()
    Local aArea     := FWGetArea()
    Local cLogo     := ""

    //Busca o logo com FisxLogo
    cLogo := FisxLogo()
    FWAlertInfo("O logo da empresa � '" + cLogo + "'", "Teste FisxLogo")

    //Busca o logo com fLogoEmp
    cLogo := ""
    fLogoEmp(@cLogo)
    FWAlertInfo("O logo da empresa � '" + cLogo + "'", "Teste fLogoEmp")

    FWRestArea(aArea)
Return
