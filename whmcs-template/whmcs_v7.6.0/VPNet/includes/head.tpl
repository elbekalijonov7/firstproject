<!-- Styling -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600|Raleway:400,700" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/all.min.css?v={$versionHash}" rel="stylesheet">

<!-- Favicon -->
<link rel="shortcut icon" type="image/png" href="{$WEB_ROOT}/templates/{$template}/favicon.png">

<!-- CSS Files -->
<link href="https://fonts.googleapis.com/css?family=Cabin:400,400i,500i,700%7CRoboto:400,500,700" rel="stylesheet">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/swiper/swiper.min.css">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/plugins/magnific-popup/magnific-popup.min.css">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/bs4-classes.css">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/style.css">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/responsive.css">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/colors/theme-color-1.css" id="theme_color">
<link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/custom.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        recaptchaSiteKey = "{$recaptchaSiteKey}";
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/scripts.min.js?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}
