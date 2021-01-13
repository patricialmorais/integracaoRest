public class AccountDataHandler {
    public static String receiveData(AccountModels.jsonAccount data){
        //teste
        
        String resultado = '200';
        Account acc = new Account();
        acc.Name    = data.mensagem.name;
        try{
            insert acc;
        }catch(Exception e){
            resultado = '500';
        }
        
        return resultado;
    }
}