public class DMLTest {
    public static void deleteStudents(){
        
        List<Student__c> ret = new List<Student__c>();
        
        for(Student__c[] tmp :  [SELECT Name FROM Student__c]){ 
            for(Student__c c : tmp){
                ret.add(c);
            }
        }
        
        delete ret;
    }
    
    public static void deleteSubjects(){
        
        List<Subject__c> ret = new List<Subject__c>();
        
        for(Subject__c[] tmp :  [SELECT Name FROM Subject__c]){ 
            for(Subject__c c : tmp){
                ret.add(c);
            }
        }
        
        delete ret;
    }
}