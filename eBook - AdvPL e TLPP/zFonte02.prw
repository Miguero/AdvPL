/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "Totvs.ch"

/*/{Protheus.doc} zFonte02
Exemplo de utiliza��o de coment�rios
@author Atilio
@since 01/02/2025
@version 1.0
@type function
/*/

User Function zFonte02()
	Local aArea    := FWGetArea()
	Local dDataAtu := Date()
	Local cHoraAtu := Time()
	Local cNome    := "eBook de AdvPL e TLPP"
	
	//Mostrando 3 mensagens com as vari�veis criadas acima
	MsgInfo("Estamos no [" + cNome + "], hoje � " + dToC(dDataAtu) + ", �s " + cHoraAtu, "Aten��o")
	MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Aten��o")
	MsgInfo("M�s passado seria " + dToC(MonthSub(dDataAtu, 1)), "Aten��o")

    /*
        Exibindo 3 mensagens, utilizando a fun��o MsgInfo
        Na primeira mensagem, vai exibir apenas uma observa��o com a data e hora
        J� nas outras duas, vai ser usado as fun��es DaySub e MonthSub para mostrar a data
        de ontem e do m�s passado
    */
    MsgInfo("Estamos no [" + cNome + "], hoje � " + dToC(dDataAtu) + ", �s " + cHoraAtu, "Aten��o")
	MsgInfo("Ontem seria " + dToC(DaySub(dDataAtu, 1)), "Aten��o")
	MsgInfo("M�s passado seria " + dToC(MonthSub(dDataAtu, 1)), "Aten��o")
	
	FWRestArea(aArea)
Return
