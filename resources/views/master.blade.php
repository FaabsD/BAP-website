<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <title>@yield("page_title")</title>
</head>
<body>
<header class="w-screen py-6 bg-blue-200 text-center">
    <h1 class="text-black text-4xl">Pressed Penny verzameling</h1>
    <h3 class="text-xl">Familie Tuijn & Kleinkinderen</h3>
</header>
@yield("content")

</body>
</html>
