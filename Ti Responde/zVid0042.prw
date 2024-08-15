/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2023/02/06/aspas-a-mais-em-variavel-caractere-ti-responde-042/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVid0042
Fun��o de exemplo, manipula��o de strings
@type  Function
@author Atilio
@since 16/06/2022
/*/

User Function zVid0042()
    Local aArea  := FWGetArea()
    Local cTexto := '{"nome":"daniel", "empresa":"atilio sistemas", "site":"https://atiliosistemas.com", "contatos":[{"email":"contato@atiliosistemas.com"}, {"email":"suporte@terminaldeinformacao.com"}]}'
    Local cQuery := " SELECT * FROM SBM990 WHERE D_E_L_E_T_ = ' ' "
    Local cNome  := 'Daniel'

    //Colocar break point na linha abaixo e ver o conte�do das 3 vari�veis em mem�ria
    Alert(cTexto + CRLF + cQuery + CRLF + cNome)

    FWRestArea(aArea)
Return
