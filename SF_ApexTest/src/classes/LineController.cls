public class LineController {

    //@future(callout=true)
    public static void Get(Integer userId, Integer orgId){
        //List<sObject> result = new List<sObject>();

		// Instantiate a new http object
        //Http h = new Http();
        // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
        //HttpRequest req = new HttpRequest();
        //req.setEndpoint('https://localhost:44300/api/lines?userId=1&&orgId=15');
        //req.setMethod('GET');
        // Send the request, and return a response
        //HttpResponse res = h.send(req);
        //System.debug(res.getBody());
        
        //return result;
        //HttpRequest req = new HttpRequest();
        //req.setEndpoint('http://dev.useaible.com/api/lines?userId=1&&orgId=1');
        //req.setEndpoint('https://www.facebook.com/');
        //req.setMethod('GET');
        //req.setHeader('contentType', 'application/json');
        //Http h = new Http();
        //HttpResponse res = h.send(req);
        
        //System.debug(res.getBody());
        //
        //
        
        //'http://dev.useaible.com/api/lines?userId='+userId+'&&orgId='+orgId;
        String endPoint = 'http://localhost:10927/api/lines?userId='+userId+'&&orgId='+orgId;
        String method = 'GET';
        HttpRequest req = new HttpRequest();
             req.setEndpoint(endPoint);
             req.setMethod(method);
        //req.setHeader('contentType', 'application/json');
            
            Http http = new Http();
            HTTPResponse res = http.send(req);
        
        System.debug(res.getBody());
        
        
        
            //Map<String,String> responseMap =   (Map<String,String>)JSON.deSerialize(res.getBody(),Map<String,String>.class);
              
              //System.debug(res.getBody());
        
        
        // Parse JSON response to get all the totalPrice field values.
//JSONParser parser = JSON.createParser(res.getBody());
        
        //List<sObject> labad = new List<sObject>();
        
        //while(parser.nextToken() != null){
            //if(parser.getCurrentToken() == JSONToken.FIELD_NAME){
            //System.debug(parser.getDoubleValue());
                //parser.nextToken();
            //}
        //}        
        
        //Map<String,Object> m = (Map<String,Object>) JSON.deserializeUntyped(res.getBody());//JSON.deserializeUntyped(res.getBody());
		/*List<Map<String,Object>> return_posts = new List<Map<String,Object>>();

        for(String key : m.keySet()){
            System.debug(key);
            Map<String,Object> posts = (Map<String,Object>)m.get(key);
            
            for (String p : posts.keySet()) {
                Map<String,Object>  pp = (Map<String,Object>)posts.get(p);
                return_posts.add(pp);
            }
        }*/
        
        //System.debug('abc');
        //System.debug(return_posts);
        
        //system.debug(parser);
        
/*Double grandTotal = 0.0;
while (parser.nextToken() != null) {
if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&
(parser.getText() == 'totalPrice')) {
// Get the value.
parser.nextToken();
// Compute the grand total price for all invoices.
grandTotal += parser.getDoubleValue();
}
}
system.debug('Grand total=' + grandTotal);*/
        
        //System.debug(parser.nextToken());
        
    }
    
}