<!DOCTYPE html>
<html>
<head>
    <title>Geolocation</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
        /* Always set the map height explicitly to define the size of the div
         * element that contains the map. */
        #map {
            height: 100%;
        }
        /* Optional: Makes the sample page fill the window. */
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<div id="map"></div>
<script>
    // Note: This example requires that you consent to location sharing when
    // prompted by your browser. If you see the error "The Geolocation service
    // failed.", it means you probably did not give permission for the browser to
    // locate you.
   function test() {
       $.ajax({
           url:'https://terminal2.expedia.com/x/packages/2017-10-26/SEA/ORL/2017-10-29/ORL/SEA?regionid=178294&limit=1',
           beforeSend: function(request) {
               request.setRequestHeader("key", "4f8ce657-ee06-4527-a8d8-4b207f8f0d62");
           },
           complete: function (response) {
               alert(response);
               $('#output').html(response.responseText);
           },
           error: function (error) {
               //alert(error)
               $('#output').html('Bummer: there was an error!');
           }
       });
   }
</script>

<input type="button" title="sdssdds" onclick="test()" > dsdsdsddssdds</input>
</body>
</html>