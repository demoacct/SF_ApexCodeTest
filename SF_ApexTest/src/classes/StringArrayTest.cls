public class StringArrayTest {

    public static List<String> generateStringArray(Integer n){
        List<String> ret = new List<String>();
        
        for(Integer i = 0; i < n; i++){
            ret.add('Test '+i);
        }
        
        return ret;
    }
    
}