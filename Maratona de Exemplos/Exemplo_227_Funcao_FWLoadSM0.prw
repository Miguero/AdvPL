/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/02/10/selecionando-filiais-com-fwlistbranches-maratona-advpl-e-tl-226/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe227
Carrega as informa��es das empresas para um array
@type Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWLoadSM0
@obs 

    Fun��o FWLoadSM0
    Par�metros
        + lForce        , L�gico      , Indica se deve for�ar a atualiza��o do array
        + lChkUser      , L�gico      , Indica se ir� exibir apenas as filiais que o usu�rio tem acesso
    Retorno
        + aEmpresas       Array       , Informa��es das filiais e empresas da SM0 (a posi��o dos campos pode ser encontrada no link do TDN acima)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe227()
    Local aArea     := FWGetArea()
    Local aEmpresas := {}
    Local nAtual    := 0

    //Carrega as empresas para a vari�vel
    aEmpresas := FWLoadSM0()

    //Percorre as empresas
    For nAtual := 1 To Len(aEmpresas)
        FWAlertInfo("Filial: " + aEmpresas[nAtual][2], "Teste FWLoadSM0")
    Next
    
    FWRestArea(aArea)
Return
