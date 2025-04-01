/*
    
    Esse � um exemplo disponibilizado no eBook AdvPL e TLPP 
    Esse eBook, est� dispon�vel no seguinte link: https://www.amazon.com.br/dp/B0F32JV54N 
    
*/


//Bibliotecas
#Include "TOTVS.ch"

/*/{Protheus.doc} User Function zFonte56
Exemplo de consumo de REST usando FWRest
@type  Function
@author Atilio
@since 20/02/2023
@see https://tdn.totvs.com/display/public/framework/FWRest
@obs 
    Exemplo original em https://terminaldeinformacao.com/2020/08/06/exemplo-de-integracao-com-viacep-usando-fwrest/
/*/

User Function zFonte56()
    Local aArea         := FWGetArea()
    Local aHeader       := {}    
    Local oRestClient   := FWRest():New("https://viacep.com.br/ws")
    Local cCep          := FWInputBox("Informe um CEP:") //'17054679'

    //Se foi preenchido um CEP
    If ! Empty(cCep)

        //Retira caracteres especiais do CEP
        cCep := StrTran(cCep, ".", "")
        cCep := StrTran(cCep, "/", "")
        cCep := StrTran(cCep, "-", "")
        cCep := StrTran(cCep, " ", "")

        //Adiciona os headers que ser�o enviados via WS
        aAdd(aHeader,'User-Agent: Mozilla/4.0 (compatible; Protheus '+GetBuild()+')')
        aAdd(aHeader,'Content-Type: application/json; charset=utf-8')
    
        //Define a url conforme o CEP e aciona o m�todo GET
        oRestClient:setPath("/"+cCep+"/json/")
        If oRestClient:Get(aHeader)
            
            //Exibe o resultado que veio do WS
            ShowLog(oRestClient:cResult)

        //Sen�o, pega os erros, e exibe em um Alert
        Else
            cLastError := oRestClient:GetLastError()
            cErrorDetail := oRestClient:GetResult()
            Alert(cErrorDetail)
        Endif  
    EndIf

    FWRestArea(aArea)
Return
