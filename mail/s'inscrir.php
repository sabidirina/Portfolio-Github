<?php
if(empty($_POST['nom']) || empty($_POST['prénom']) || empty($_POST['message']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
  http_response_code(500);
  exit();
}

$nom = strip_tags(htmlspecialchars($_POST['nom']));
$email = strip_tags(htmlspecialchars($_POST['prénom']));
$email = strip_tags(htmlspecialchars($_POST['email']));
$motdepass = strip_tags(htmlspecialchars($_POST['mot de pass']));

$to = "info@example.com"; // Change this email to your //
$subject = "$m_subject:  $name";
$body = "You have received a new message from your website contact form.\n\n"."Here are the details:\n\nName: $name\n\n\nEmail: $email\n\nSubject: $m_subject\n\nMessage: $message";
$header = "From: $email";
$header .= "Reply-To: $email";	

if(!mail($to, $subject, $body, $header))
  http_response_code(500);
?>
