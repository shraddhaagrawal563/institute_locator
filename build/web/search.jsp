<%-- 
    Document   : search
    Created on : Aug 23, 2016, 4:50:27 PM
    Author     : SDPOTDAR
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
      

    

    
    <%
 out.print("<input type=text id=t1><br><br>");
%>             
          
     <input type='submit' value='           SEARCH             '  id= "b1">     
         <p id="x"> </p>
    
    
    
         <script src="jquery-3.1.0.min.js"></script>
    
    <script>
     
    $(document).ready(function(){
   
     $('#b1').click(function(){
         var y=$('#t1').val();
         $.post('searching.jsp',{id:y},function(data){
                $('#x').html(data);
         });
         
     });        
    
    });
        
    </script>

    </body>
</html>
