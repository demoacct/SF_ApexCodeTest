public class AccountHandler {

    public static Account insertNewAccount(String paramz){
        
        try{
        Account c = new Account(Name = paramz);
        insert c;
        
        return c;
        }catch(DmlException e){
            return null;
        }
    }
    
}