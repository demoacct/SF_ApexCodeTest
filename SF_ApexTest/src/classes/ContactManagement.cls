@RestResource(urlMapping='/ContactMgt/*')
global with sharing class ContactManagement {

    @HttpGet
    global static List<Contact> contacts(){
        List<Contact> ret = new List<Contact>();
        
        for(Contact[] tmp :  [SELECT Name FROM Contact WHERE FirstName = 'John']){ 
            for(Contact c : tmp){
                ret.add(c);
            }
        }
        
        return ret;
    }
    
}