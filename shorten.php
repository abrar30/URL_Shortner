<?php
session_start();
require_once 'classes/Shortener.php';
$s = new Shortener;
if(isset($_POST['url'])){
     $url = $_POST['url'];
    if($code = $s->makeCode($url)){
        $_SESSION['feedback'] = " <div class = 'alert alert-success'>Your Short URL is <a href = \"http://localhost/{$code}\"> http://localhost/{$code}</a> </div>";
    } 
    else{
        //there was error
         $_SESSION['feedback'] = "<div class = 'alert alert-danger'>There was a Problem. Maybe! Invalid URL </div>";
    }
}
header('Location: index.php');
?>
