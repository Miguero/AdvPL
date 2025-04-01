/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


/* 1 . Bibliotecas e Constantes */

//Bibliotecas
#Include "Totvs.ch"

/* 2 . Documenta��o da Fun��o / Identifica��o */

/*/{Protheus.doc} zFonte01
Demonstrando a estrutura de um program em AdvPL
@author Atilio
@since 15/02/2020
@version 1.0
@type function
@obs A linguagem � estruturada, ou seja, um comando ser� executado por vez
	Al�m disso, ela tem limita��es no nome de fun��es e vari�veis
@see https://tdn.totvs.com/display/tec/ProtheusDOC
/*/

/* 3 . Abertura de um programa */

User Function zFonte01()
	Local aArea    := FWGetArea()
	Local dDataAtu := Date()
	Local cHoraAtu := Time()
	Local cNome    := "eBook de AdvPL e TLPP"
	
	/* 4 . Corpo do programa */
	MsgInfo("Estamos no [" + cNome + "], hoje � " + dToC(dDataAtu) + ", �s " + cHoraAtu, "Aten��o")
	MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Aten��o")
	MsgInfo("M�s passado seria " + dToC(MonthSub(dDataAtu, 1)), "Aten��o")
	
	/* 5 . Encerramento do programa */
	FWRestArea(aArea)
Return
