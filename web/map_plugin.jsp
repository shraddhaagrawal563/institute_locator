<!DOCTYPE html>
<html>
  <head>
   <script type="text/javascript">
     function initGeolocation()
     {
        if( navigator.geolocation )
        {
           // Call getCurrentPosition with success and failure callbacks
           navigator.geolocation.getCurrentPosition( success, fail );
        }
        else
        {
           alert("Sorry, your browser does not support geolocation services.");
        }
     }

     function success(position)
     {

         document.getElementById('lon').value = position.coords.longitude;
         document.getElementById('lat').value = position.coords.latitude;
     }

     function fail()
     {
        // Could not obtain location
     }

   </script>    
 </head>

 <body onLoad="initGeolocation();">
   <FORM NAME="rd" METHOD="POST" ACTION="map_plugin2.jsp">
     <INPUT TYPE="text" NAME="lon" ID="long" name="lon" VALUE="">
     <INPUT TYPE="text" NAME="lat" ID="lat" name="lat" VALUE="">
<input type="submit">
 </body>
</html>