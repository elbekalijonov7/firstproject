<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">

{$headeroutput}

<!-- Preloader -->
<div class="preLoader"></div>

<!-- Main header -->
<header class="header">
    <div class="header-top bg-primary" data-animate="fadeInDown" data-delay=".5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-sm-9">
                    <!-- Header info -->
                    <ul class="header-info list-inline text-white mb-md-0">
                        <li>Your IP : 192.168.0.102</li>
                        <li>Your Location : Dhaka, Bangladesh</li>
                        <li>Your Status : <span>Unprotected</span></li>
                    </ul>
                </div>
                <div class="col-sm-3 hidden-xs">
                    <!-- Header social icons -->
                    <ul class="social-icons text-right list-inline mb-0">
                        <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-google-plus-g"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-vimeo-v"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="main-header bg-light">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-3 col-sm-6 col-xs-6">
                    <!-- Logo -->
                    <div class="logo" data-animate="fadeInUp" data-delay=".7">
                        <a href="http://themelooks.net/demo/vpnet/html/preview/">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/logo.png" alt="VPNet">
                        </a>
                    </div>
                </div>
                <div class="col-md-9 col-sm-6 col-xs-6">
                    <nav data-animate="fadeInUp" data-delay=".9">
                        <!-- Header-menu -->
                        <div class="header-menu">
                            <ul class="text-lg-right">
                                <li><a href="http://themelooks.net/demo/vpnet/html/preview/">Home</a></li>
                                <li class="active"><a href="http://billing.ywhmcs.com/?systpl=VPNet">WHMCS</a></li>
                                <li>
                                    <a href="#">Pages <i class="fa fa-caret-down"></i></a>
                                    <ul>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/about.html">About</a></li>
                                        <li>
                                            <a href="#">Team Members <i class="fa fa-caret-right"></i></a>
                                            <ul>
                                                <li><a href="http://themelooks.net/demo/vpnet/html/preview/team-grid-3.html">3 Columns</a></li>
                                                <li><a href="http://themelooks.net/demo/vpnet/html/preview/team-grid-4.html">4 Columns</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/affiliate.html">Affiliate Program</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/pricing.html">Pricing Plans</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/testimonials.html">Testimonials</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/service-details.html">Service Details</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/404.html">404</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog <i class="fa fa-caret-down"></i></a>
                                    <ul>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog.html">Full Width</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog-sidebar-left.html">Blog Sidebar Left</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog-sidebar-right.html">Blog Sidebar Right</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog-2-columns.html">2 Columns Blog</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog-3-columns.html">3 Columns Blog</a></li>
                                        <li><a href="http://themelooks.net/demo/vpnet/html/preview/blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="http://themelooks.net/demo/vpnet/html/preview/faq.html">FAQ</a></li>
                                <li><a href="http://themelooks.net/demo/vpnet/html/preview/contact.html">Contact</a></li>
                            </ul>
                        </div>
                        <!-- End of Header-menu -->
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- End of Main header -->

<section id="header">
    <div class="container">
        <ul class="top-nav">
            {if $languagechangeenabled && count($locales) > 1}
                <li>
                    <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                        {$activeLocale.localisedName}
                        <b class="caret"></b>
                    </a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </li>
            {/if}
            {if $loggedin}
                <li>
                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        {$LANG.notifications}
                        {if count($clientAlerts) > 0}
                            <span class="label label-info">{lang key='notificationsnew'}</span>
                        {/if}
                        <b class="caret"></b>
                    </a>
                    <div id="accountNotificationsContent" class="hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/logout.php" class="btn">
                        {$LANG.clientareanavlogout}
                    </a>
                </li>
            {else}
                <li>
                    <a href="{$WEB_ROOT}/clientarea.php">{$LANG.login}</a>
                </li>
                {if $condlinks.allowClientRegistration}
                    <li>
                        <a href="{$WEB_ROOT}/register.php">{$LANG.register}</a>
                    </li>
                {/if}
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="btn">
                        {$LANG.viewcart}
                    </a>
                </li>
            {/if}
            {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="fas fa-sign-out-alt"></i>
                    </a>
                </li>
            {/if}
        </ul>

    </div>
</section>

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main bg-primary" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#primary-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="primary-nav">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

{if $templatefile == 'homepage'}
    <section id="home-banner" class="bg-light">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn search" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn transfer" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="home-shortcuts bg-primary text-white">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fas fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="cart.php">
                                <i class="far fa-hdd"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fas fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="far fa-envelope"></i>
                                <p>
                                    {$LANG.getsupport} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
{/if}

{include file="$template/includes/verifyemail.tpl"}

<section id="main-body">
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
