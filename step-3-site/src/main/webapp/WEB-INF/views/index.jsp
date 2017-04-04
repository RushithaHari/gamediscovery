<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE HTML>
        <html lang="en" ng-app="app">

        <head>
            <!-- BASE FOR HTML -->
            <base href="/" />

            <!-- CSS -->
            <link rel="stylesheet" type="text/css" href="/app/${production ? 'assets/dist' : 'wro4j'}/gamediscovery.css?v=${version}" />

            <!-- WEBMASTERS TOOLS -->
            <meta name="google-site-verification" content="6Gwk-hvH0GdoYZI4N4tzuG_MO1N3I1MF6leSuCsKzPU" />
            <meta name="msvalidate.01" content="8FEF62F2E2A31EE1DF49745A1D041320" />

            <!-- RENDERING -->
            <link rel="icon" href="/favicon.ico" />
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

            <!-- DESCRIPTION -->
            <meta name="description" content="Check out new games with the same characteristics of your favorite games" />
            <meta name="keywords" content="Video games recommendations, Video games search engine, Video games database" />
            <meta name="application-name" content="Game Discovery" />

            <!-- OPEN GRAPH -->
            <meta name="og:title" content="Game Discovery | The most advanced game search engine" />
            <meta name="og:description" content="Check out new games with the same characteristics of your favorite games" />

            <!-- TITLE -->
            <title translate>Game Discovery | The most advanced game search engine</title>

            <!-- METADATA (SITE) -->
            <script type="application/ld+json">
                {
            "@context" : "http://schema.org",
            "@type" : "WebSite",
            "name" : "Game Discovery",
            "url" : "http://www.gamediscovery.net/",
            "sameAs" : [
            "http://www.facebook.com/gamediscovery.net"
            ]
            }
            </script>
        </head>

        <body ng-controller="AppController">
            <!-- HEADER -->
            <div id="app-header" class="shadowed">
                <div class="ui middle aligned container grid">

                    <!-- HEADER -->
                    <div class="twelve wide computer sixteen wide mobile column only">
                        <a class="ui header clickable" ng-click="changeToMain()">
                            <div class="content">
                                <span class="massive header">Game Discovery</span>
                                <div class="medium sub header" translate>The most advanced game search engine</div>
                            </div>
                        </a>
                    </div>

                    <!-- LANGUAGE -->
                    <div class="four wide computer sixteen wide mobile right aligned column desktop-only">
                        <language-selector></language-selector>
                    </div>
                </div>
            </div>

            <!-- CONTENT -->
            <div id="app-content" class="ui fluid container" style="padding:0 2rem">
                <search filters="data.filters" games="data.games" games-total-results="data.gamesTotalResults" searching="data.isSearchingGames"></search>
                <br/>
                <search-results games="data.games" games-total-results="data.gamesTotalResults" searching="data.isSearchingGames"></search-results>
            </div>

            <!-- =============================================================== -->
            <!-- CSS / JS -->
            <!-- =============================================================== -->
            <script type="text/javascript" src="/app/${production ? 'assets/dist' : 'wro4j'}/gamediscovery.js?v=${version}" async></script>
        </body>

        </html>
