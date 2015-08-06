public class DynamicSObject {
    public SObject getNewSobject(String t) {
    
        /* Call global describe to get the map of string to token. */
        Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe(); 
        
        /* Get the token for the sobject based on the type. */
        Schema.SObjectType st = gd.get(t);
        System.assert(st != null,'Type provided: "' + t + '" doesnt map to an sobject token in this org.');
        
        /* Instantiate the sobject from the token. */
        Sobject s = st.newSobject();
        
        return s;
    }
}