/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/02/validando-se-o-programa-esta-rodando-no-sigamdi-com-a-ljismdi-maratona-advpl-e-tl-330/
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} User Function zExe331
Carrega um objeto em mem�ria com uma imagem do reposit�rio do Protheus
@type Function
@author Atilio
@since 12/03/2023
@see https://tdn.totvs.com/pages/releaseview.action?pageId=6815071
@obs 

    Fun��o LoadBitmap
    Par�metros
        + uParam1    , Indefinido   , Compatibilidade
        + cNome      , Caractere    , Nome da imagem no reposit�rio
    Retorno
        + oObjeto    , Objeto       , Objeto com a imagem carregada

    Obs.: Apesar de em muitos lugares utilizarem a GetResources(), hoje n�o � mais necess�rio, sendo que essa
    fun��o foi at� descontinuada (ela retorna sempre Nil)

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe331()
    Local aArea     := FWGetArea()
    Local oImagem
    
    //Busca a imagem no reposit�rio
    oImagem := LoadBitmap(, "BR_VERDE")

    FWRestArea(aArea)
Return
