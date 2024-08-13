/*
    Esse exemplo faz parte da s�rie do YouTube, Maratona de Exemplos, do canal Terminal de Informa��o, 
    caso queira ver esse exemplo rodando em v�deo, acesse o seguinte link:     https://terminaldeinformacao.com/2024/04/16/imprimindo-etiqueta-em-impressora-termica-com-mscbprinter-maratona-advpl-e-tl-358/
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zExe359
Abre a tela de banco de conhecimento
@type Function
@author Atilio
@since 26/03/2023
@see https://tdn.totvs.com/display/public/framework/MsDocument
@obs 
    Fun��o MsDocument
    Par�metros
        Alias da Tabela
        N�mero do Registro (Recno)
        Op��o do menu (4 = altera��o; 2 = visualiza��o;)
    Retorno
        Retorno l�gico se conseguiu abrir a tela ou n�o

    **** Apoie nosso projeto, se inscreva em https://www.youtube.com/TerminalDeInformacao ****
/*/

User Function zExe359()
    Local aArea      := FWGetArea()
    Local cCodigo    := "C00001"
    Local cLoja      := "01"

    //Abre a tabela de clientes
    DbSelectArea("SA1")
    SA1->(DbSetOrder(1)) // Filial + C�digo + Loja

    //Se conseguir posicionar no cliente, abre o banco de conhecimento dele
    If SA1->(MsSeek(FWxFilial('SA1') + cCodigo + cLoja))
        MsDocument('SA1', SA1->(RecNo()), 4)
    EndIf

    FWRestArea(aArea)
Return
