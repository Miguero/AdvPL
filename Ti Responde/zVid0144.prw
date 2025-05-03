/*
    
    Esse � um exemplo disponibilizado no Terminal de Informa��o 
    Confira o artigo sobre esse assunto, no seguinte link: https://terminaldeinformacao.com/2025/04/22/adicionar-validacao-de-email-nos-campos-ti-responde-0144/ 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zVldMail
Fun��o que valida se o campo digitado possui emails v�lidos
@type  Function
@author Atilio
@since 12/04/2024
@obs Ap�s compilar, coloque na valida��o de usu�rio (X3_VLDUSER) dos campos desejados como o A1_EMAIL: u_zVldMail()

Abaixo alguns exemplos que voc� pode testar:
"teste@teste.com"
"teste@teste.com;"
"teste@teste.com;teste2@tst.com"
"teste@teste.com;teste2@tst"
"teste@te ste.com"
";;;"
"aaa"
/*/

User Function zVldMail()
    Local aArea     := FWGetArea()
    Local lContinua := .T.
    Local cEmails   := Alltrim(&(ReadVar()))
    Local aEmails   := {}
    Local nAtual    := 0

    //Se tiver ponto e v�rgula
    If ";" $ cEmails
        //Valida se o usu�rio s� colocou ;, para assim impedir
        If Empty(StrTran(cEmails, ";", ""))
            lContinua := .F.
            ExibeHelp("Help zVldMail", "eMail inv�lido!", "Verifique se foi inserido corretamente o campo!")
        Else

            //Quebra a string em um array
            aEmails := StrTokArr(cEmails, ";")

            //Percorre todos os eMails enocntrados
            For nAtual := 1 To Len(aEmails)

                //S� vai continuar se o email for v�lido
                lContinua := lContinua .And. IsEmail(aEmails[nAtual])

                //Se houve alguma falha, j� encerra o la�o
                If ! lContinua
                    Exit
                EndIf

            Next
        EndIf


    //Sen�o, valida s� o que foi inserido no campo
    Else
        lContinua := IsEmail(cEmails)
    EndIf

    FWRestArea(aArea)
Return lContinua
