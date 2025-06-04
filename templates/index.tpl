<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadanie 01 - Webmaster</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/tiny-slider.css">
    <link rel="stylesheet" href="/css/theme.css">
</head>
<body>
    <div id="app">
        <h1>Best sellers</h1>
        <div class="product-slider my-slider">
            {foreach from=$products item=product}
                <div class="product-card">
                    <img src="{$product.img_url}" alt="{$product.name}">
                    <h3>{$product.name}</h3>
                    <div class="price">
                        {if $product.specific_price}
                            <span class="new promotion">{displayPrice price=$product.price}</span>
                            <span class="old">{displayPrice price=$product.specific_price.priceWithoutReduction}</span>
                        {else}
                            <span class="new">{displayPrice price=$product.price}</span>
                        {/if}
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
    <script src="/js/jquery-3.6.0.slim.min.js"></script>
    <script src="/js/tiny-slider.js"></script>
    <script src="/js/theme.js"></script>
</body>
</html>