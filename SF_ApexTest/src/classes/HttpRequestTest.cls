public class HttpRequestTest {

    //public static void testHttpRequest(){
        //HttpRequest req = new HttpRequest();
        //req.setEndpoint('callout:facebook/https://www.facebook.com/');
        //req.setMethod('GET');
        //Http http = new Http();
        //HTTPResponse res = http.send(req);
        //System.debug(res.getBody());
    //}
    
    @future(callout=true)
  public static void sendCalloutREST(String jsonString){
    try{
      String endPointURL = 'https://www.facebook.com/';
      String userName = 'samuser';
      String password = 'Sam@789';
      
      // Specify the required user name and password to access the endpoint 
      // As well as the header and header information 
      Blob headerValue = Blob.valueOf(userName + ':' + password);
      String authorizationHeader = 'BASIC ' +
      EncodingUtil.base64Encode(headerValue);

      Httprequest request = new HttpRequest();
      Http http = new Http();

          request.setMethod('POST');
          request.setEndpoint(endPointURL);
      request.setHeader('Content-Type', 'application/json');
      // Header info with remote server user name and password
      request.setHeader('Authorization', authorizationHeader);
      //Check the client certificate
      request.setClientCertificateName('Sample-Rest-Self-Signed');
      // timeout in milliseconds       
      request.setTimeout(120000); 
          request.setBody(jsonString);          
          
          //Making call to external REST API
          HttpResponse response = http.send(request);  

          System.debug('responseBody: '+response.getBody());
      }catch(Exception e){
      System.debug('Error::'+e.getMessage());
    }
  }
    
    public static void agoy(){
        
        HttpRequest req = new HttpRequest();
     req.setEndpoint('https://www.gmail.com');
     req.setMethod('GET');
     
     // Specify the required user name and password to access the endpoint
     // As well as the header and header information
 
     String username = 'ryan.repe@ryskampinnovations.com';
     String password = '';
  
     Blob headerValue = Blob.valueOf(username + ':' + password);
     String authorizationHeader = 'BASIC ' +
     EncodingUtil.base64Encode(headerValue);
     req.setHeader('Authorization', authorizationHeader);
   
     // Create a new http object to send the request object
     // A response object is generated as a result of the request  
  
     Http http = new Http();
     HTTPResponse res = http.send(req);
     System.debug(res.getBody());
        
    }
}