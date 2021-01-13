@RestResource(urlMapping='/createAccount/*')
global with sharing class AccountIntegration {
    @HttpPost
    global static String doPost() {
			
		AccountModels.jsonAccount accResult = new AccountModels.jsonAccount();

        RestRequest req = RestContext.request;

        accResult = (AccountModels.jsonAccount)JSON.deserialize(req.requestBody.toString(),AccountModels.jsonAccount.class);
		String resultado = AccountDataHandler.receiveData(accResult);             				   

        return resultado;
    }
}