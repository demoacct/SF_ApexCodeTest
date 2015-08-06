public class ContactAndLeadSearch {

    public static List<List<sObject>> searchContactsAndLeads(String name){
        List<List<sObject>> results = [FIND :name IN ALL FIELDS RETURNING Contact(FirstName,LastName), 
                                       Lead(FirstName,LastName)];
        return results;
    }
    
}