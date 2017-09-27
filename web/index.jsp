<html>

<style>
    #map {
        height: 600px;
        width: 100%;
    }

    #overlay {
        display: none;
        position: absolute;
        top: 31%;
        left: 25%;
        width: 52%;
        height: 66%;
        z-index: 1000;
        background-color: #333;
        opacity: .60;
    }

    #popup {
        color: #333;
        display: none;
        position: absolute;
        top: 45%;
        left: 30%;
        width: 100%;
        /* border: 5px solid #333; */
        text-align: left;
        z-index: 1001;
        overflow: auto;
        font-size: 10px;
    }
</style>

<head>


    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btn').click(function () {
                $('#overlay, #popup').css('display', 'block');
            });

            $('#overlay').click(function () {
                $('#overlay, #popup').css('display', 'none');
            });
        });
        function showOverlay(param) {
            $('#overlay, #popup').css('display', 'block');
            document.getElementById("packageLanding").href = param;
        }
    </script>


    <script>
        function initMap() {
            var Mexico = {
                lat: 19.4326,
                long: -99.1332,
                title: "Mexico",
                regionId: 178285,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/U9tdnQU5Qs28llL/Maxico_new.jpg"
            };

            var dubai = {
                lat: 25.2048,
                long: 55.2708,
                title: "Dubai",
                regionId: 1079,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/PS74VcavPFIoWFa/Dubai_New.jpg"

            };

            var Cairo = {

                lat: 30.0444,
                long: 31.2357,
                title: "Cairo",
                regionId: 178243,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/fqMfRYxPAqR2Ro5/Cairo_new.jpg"
            };

            var tokyo = {

                lat: 35.6895,
                long: 139.6917,
                title: "Tokyo",
                regionId: 179900,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/vcaypE8767xNS07/Tokyo_New.jpg"

            };

            var Hongkong = {

                lat: 22.3964,
                long: 114.1095,
                title: "HongKong",
                regionId: 178263,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/ouRTQDXWZMnZTN9/Hong%20kong_New.jpg"

            };

            var bankok = {

                lat: 13.7563,
                long: 100.5018,
                title: "Bangkok",
                regionId: 178236,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/pAnmP82vR8Th6pQ/Bangkok_New.jpg"
            };

            var Singapore = {
                lat: 1.3521,
                long: 103.8198,
                title: "Singapore",
                regionId: 180027,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/pEqtVhv6FwKaeZZ/Singapore_New.jpg"
            };

            var Manila = {

                lat: 14.5995,
                long: 120.9842,
                title: "Manila",
                regionId: 178282,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/2ikIXQXIrG5sy4l/Manila_New.jpg"
            };


            var London = {

                lat: 51.5074,
                long: 0.1278,
                title: "London",
                regionId: 178279,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/4926883/NCsSVJNv4UglIZA/London_New.jpg"
            };


            var Paris = {

                lat: 48.8566,
                long: 2.3522,
                title: "Paris",
                regionId: 179898,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/gCquxW9KvxaYGHD/Paris_NEWW.jpg"

            };


            var Berlin = {

                lat: 52.5200,
                long: 13.4050,
                title: "Berlin",
                regionId: 179892,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/IbA6jXmoYvuNX5F/Berlin%20Collage.jpg"

            };


            var Venice = {

                lat: 45.4408,
                long: 12.3155,
                title: "Venice",
                regionId: 179981,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/TxeymyozZzYKyAr/Venice_new.jpg"

            };


            var Rome = {

                lat: 41.9028,
                long: 12.4964,
                title: "Rome",
                regionId: 179899,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/rESP24ZkjAHQ4qI/Romecollage.jpg"

            };


            var Madrid = {

                lat: 40.4168,
                long: 3.7038,
                title: "Madrid",
                regionId: 178281,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/2yL4y11NheB1hpM/Madrid.jpg"
            };


            var NY = {

                lat: 40.7128,
                long: -74.0059,
                title: "New York",
                regionId: 178293,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/K1nNIuXpzPP8LhA/NEWWWWWWWW.jpg"

            };


            var Miami = {

                lat: 25.7617,
                long: -80.1918,
                title: "Miami",
                regionId: 178286,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/laCRZoy6z6cpWTl/MiamiNew.jpg"

            };


            var Orlando = {

                lat: 28.5383,
                long: -81.3792,
                title: "Orlando",
                regionId: 178294,
                imageUrl: "https://s3.amazonaws.com/uploads.hipchat.com/28219/3210002/4ljP0eCZ1kEDyV8/ORLANDO.jpg"
            };

            var locations = [
                [Mexico.title, Mexico.lat, Mexico.long, Mexico.regionId, Mexico.imageUrl],
                [dubai.title, dubai.lat, dubai.long, dubai.regionId, dubai.imageUrl],
                [Cairo.title, Cairo.lat, Cairo.long, Cairo.regionId, Cairo.imageUrl],
                [tokyo.title, tokyo.lat, tokyo.long, tokyo.regionId, tokyo.imageUrl],
                [Hongkong.title, Hongkong.lat, Hongkong.long, Hongkong.regionId, Hongkong.imageUrl],
                [bankok.title, bankok.lat, bankok.long, bankok.regionId, bankok.imageUrl],
                [Singapore.title, Singapore.lat, Singapore.long, Singapore.regionId, Singapore.imageUrl],
                [Manila.title, Manila.lat, Manila.long, Manila.regionId, Manila.imageUrl],
                [London.title, London.lat, London.long, London.regionId, London.imageUrl],
                [Paris.title, Paris.lat, Paris.long, Paris.regionId, Paris.imageUrl],
                [Berlin.title, Berlin.lat, Berlin.long, Berlin.regionId, Berlin.imageUrl],
                [Venice.title, Venice.lat, Venice.long, Venice.regionId, Venice.imageUrl],
                [Rome.title, Rome.lat, Rome.long, Rome.regionId, Rome.imageUrl],
                [Madrid.title, Madrid.lat, Madrid.long, Madrid.regionId, Madrid.imageUrl],
                [NY.title, NY.lat, NY.long, NY.regionId, NY.imageUrl],
                [Miami.title, Miami.lat, Miami.long, Miami.regionId, Miami.imageUrl],
                [Orlando.title, Orlando.lat, Orlando.long, Orlando.regionId, Orlando.imageUrl]
            ];



            var london = {lat: 51.5074, lng: 0.1278};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 3,
                center: london
            });
            var marker = new google.maps.Marker({
                position: london,
                map: map,
                title: "London"
            });

            var infowindow = new google.maps.InfoWindow({});

            var i;

            for (i = 0; i < locations.length; i++) {
                marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map,
                    title: locations[i][0]
                });

                google.maps.event.addListener(marker, 'click', (function (marker, i) {
                    return function () {

                        var html = '<h4>' + locations[i][0] + '</h4>';
                        html += '<div  style= "padding-left: 17px";> <a target="_blank" href=https://www.expedia.com/lp/destinations/' + locations[i][3] + '> <image href=https://www.expedia.com/lp/destinations/' + locations[i][3] + ' width=500px height=400px src=' + locations[i][4] + ' ></image></a></div>';

                        html += '<table width="100%"> <tr>';
                        html += ' <td style="padding: 5px;" width="50%"><a target="_blank" href= https://www.expedia.com/lp/destinations/' + locations[i][3] + '><strong>Learn More</strong></a></td>';
                        html += '<td width="50%" align="right"><strong><a id="button" onclick="showOverlay(' + locations[i][4] +' )";>See Prices</a></strong></td>';
                        html += '</tr></table>';

                        infowindow.setContent(html);
                        infowindow.open(map, marker);
                    }
                })(marker, i));
            }
            google.maps.event.addListener(infowindow, 'closeclick', function () {
                var center = map.getCenter();

                google.maps.event.trigger(map, "resize");
                map.setCenter(center);
            });

        }
    </script>

</head>
<body>
<img src="header1.png" height="25%" width="100%">
<div style="width: 70%">
    <div id="map" style="margin-left:20%"></div>
</div>
<div align="center" style="padding: 5px"><img src="CM1.png"></div>

<img src="middle.png" height="35%" width="100%">

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBK_4hMqe1qQgYlYZhHlpgAHHXVA_wlEVI&callback=initMap">
</script>
<div id="overlay"></div>
<div id="popup"><a id="packageLanding" target="_blank"> <img  src="origin.png" height="200px" width="600px"></a></div>
<div id="result"></div>


<img src="footer.png" height="100%" width="100%">

</body>
</html>

