public class Describer {
    
    private Map <String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
    public List <Pair> fields { get; set; }
    public List<SelectOption> fieldNames { get; set; }
    public List <SelectOption> objectNames { public get; private set; }
    public String selectedObject { get; set; }
    public String selectedFieldName { get; set; }
    
    // Intialize objectNames and fields
    
    public Describer() {
        objectNames = initObjNames();
        fields = new List<Pair>();
    }
    // Populate SelectOption list -
    
    // find all sObjects available in the organization
    
    private List<SelectOption> initObjNames() {
        
        List<SelectOption> objNames = new List<SelectOption>();
        List<String> entities = new List<String>(schemaMap.keySet());
        
        entities.sort();
        
        for(String name : entities)
            objNames.add(new SelectOption(name,name));
        
        return objNames;
    }
    
    /*private List<SelectOption> initFieldNames() {
        
        Map <String, Schema.SObjectField> fieldMap = schemaMap.get(selectedObject).getDescribe().fields.getMap();
        List<SelectOption> objNames = new List<SelectOption>();
        List<String> fields = new List<String>(fieldMap.keySet());
        
        fields.sort();
        
        for(String name : fields)
            fieldNames.add(new SelectOption(name,name));
        
        return fieldNames;
    }*/
    
    // Find the fields for the selected object
    
    public void showFields() {
        
        fields.clear();
        
        Map <String, Schema.SObjectField> fieldMap = schemaMap.get(selectedObject).getDescribe().fields.getMap();
        fieldNames = new List<SelectOption>();
        
        for(Schema.SObjectField sfield : fieldMap.Values()){
            
            schema.describefieldresult dfield = sfield.getDescribe();
            
            Pair field = new Pair();
            
            field.key = dfield.getname();
            
            fields.add(field);
            fieldNames.add(new SelectOption(dfield.getname(), dfield.getname()));
        }
    }
    
    public class Pair {
        public String key {get; set;}
        public String val {get; set;}
    }
}