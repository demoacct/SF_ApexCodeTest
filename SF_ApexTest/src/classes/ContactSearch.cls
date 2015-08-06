public class ContactSearch {

    public static List<Contact> searchForContacts(String lastName, String postalCode){
        
        List<Contact> ret = new List<Contact>();
        
        for(Contact[] tmp :  [SELECT Name FROM Contact WHERE (LastName=:lastName AND MailingPostalCode=:postalCode)]){ 
            for(Contact c : tmp){
                ret.add(c);
            }
        }
        return ret;
    }
    
}