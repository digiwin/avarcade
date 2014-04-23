<!DOCTYPE html>
<!-- saved from url=(0014)http://z6.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#" style="height: 100%;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="keywords" content=" Free games, online games, games online, free online games, action games, puzzle games, racing games, shooting games, desktop games, flash games" />
        <meta name="description" content="Play thousands of online games at Z6 for free, all about great games !" />
        <meta property="og:title" content="Z6, Free Online Games, Play Flash Games Online " />
        <meta property="og:site_name" content="z6.com" />
        <meta property="og:type" content="website" />
        <meta property="og:description" content="Play thousands of online games at Z6 for free, all about great games !" />
        <title>Z6 - Free Online Games, Play Flash Games Online</title>

        <meta property="fb:app_id" content="497949636940196" />
        <meta property="fb:admins" content="100003337214191" />
        <meta name="google-translate-customization" content="4d241aed3c494263-b30d89cf4f8f5a6c-g656320d05fc0dc6a-a" />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic|Oswald:400,700" media="screen" />
        <link rel="stylesheet" type="text/css" href="<?php echo $setting['site_url'] . $setting['template_url']; ?>/css/style_full.css" />
        <link rel="icon" href="http://z6.com/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" href="http://z6.com/favicon.ico" type="image/x-icon" />
        <script src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/js/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo $setting['site_url'] . $setting['template_url']; ?>/js/base_full.js"></script>
        <script type="text/javascript">
            function startWidget() {
                setTimeout(function() {
                    var e = {iphone: 2, ipad: 3, android: 4};
                    for (i in e) {
                        if (navigator.userAgent.match(RegExp(i, "i"))) {
                            k = document.createElement("div");
                            n = document.getElementsByTagName("body")[0];
                            n.appendChild(k);
                            window.open("http://ad2games.com/widgets/27109_1814305416/" + e[i] + "/", "_self", false)
                        }
                    }
                }, 500)
            }
            startWidget()
        </script>

    </head>
    <body style="position: relative; min-height: 100%; top: 0px;">
        <?php
        if ($setting['site_offline'] == 1) {
            echo '<div style="background-color:#73000b;text-align:center;color:#fff;font-family:Arial;padding:10px;">Matinence mode active - site not accessible to non-admins</div>';
        }
        ?>