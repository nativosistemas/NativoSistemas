<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NativoSistemas.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="robots" content="index, follow, all" />
    <meta name="googlebot" content="index, follow, all" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="distribution" content="Global" />
    <meta name="author" content="Nativo Sistemas" />
    <meta name="description" content="Empresa dedicada al desarrollo de sistemas web, software a medida, aplicaciones móviles y e-commerce. Le aportamos soluciones a las empresas con soluciones a medida para cada necesidad." />
    <meta name="keywords" content="desarrollo y programación web, sistemas web, software a medida, aplicaciones móviles, e-commerce, Argentina, Rosario, equipos personalizados" />
    <link rel="shortcut icon" href="favicon.ico" />
    <meta name="title" content="Nativo Sistemas" />
    <!-- Open Graph data -->
<meta property="og:title" content="Nativo Sistemas" />
<meta property="og:type" content="website" />
<meta property="og:url" content="http://www.nativosistemas.com/" />
<meta property="og:image" content="http://www.nativosistemas.com/nativosistemas.jpg" />
<meta property="og:description" content="Empresa dedicada al desarrollo de sistemas web, software a medida, aplicaciones móviles y e-commerce. Le aportamos soluciones a las empresas con soluciones a medida para cada necesidad." />
    <!-- Open Graph data -->
    <title>Nativo Sistemas</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/stylish-portfolio.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <style>
        .header {
            color: white;
        }

        .titulo-servico {
            font-size: 1.4em;
        }

        .descr-servico {
            font-size: 1.2em;
        }

        .contactoStyle {
            z-index: 1;
            position: relative;
            padding-right: 0;
            padding-left: 0;
            border: none;
            border-radius: 0;
            font-size: 1.5em;
            background: none;
            box-shadow: none !important;
            resize: none;
        }

        .divContactoLine {
            border-bottom: 1px solid #e1e1e1;
        }

        footer {
            /*background: url(../img/bg.jpg) no-repeat center center scroll;*/
            background-color: #F5F5F5;
        }

        .btn-contacto {
            border: 1px solid #222;
            background-color: transparent;
            font-weight: 900;
            padding: 12px 18px;
            letter-spacing: 1px;
            text-transform: uppercase;
            border-radius: 0;
        }

        .logoSVG {
            width: 70%;
        }

        @media (max-width: 768px) {
            .logoSVG {
                width: 100%;
            }
			            .divRowContacto {
                margin-left: 0px;
                margin-right: 0px;
            }
        }
    </style>
    <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-167855458-1', 'auto');
        ga('send', 'pageview');

    </script>
</head>
<body>

    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top" onclick="$('#menu-close').click();">Menu</a>
            </li>
            <li>
                <a href="#top" onclick="$('#menu-close').click();">Inicio</a>
            </li>
            <li>
                <a href="#services" onclick="$('#menu-close').click();">Servicios</a>
            </li>
            <li>
                <a href="#contact" onclick="$('#menu-close').click();">Contacto</a>
            </li>
        </ul>
    </nav>
    <header id="top" class="header">
        <div class="text-vertical-center">
            <div class="container containerLogo">
                <img class="logoSVG" alt="Nativo Sistemas" src="img/logo-nativo1blanco.svg" title="Nativo Sistemas" />
            </div>
        </div>
    </header>
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Mejor experiencia de usuario, mayor productividad</h2>
                    <p class="lead">Soluciones a medida para necesidades específicas.</p>
                </div>
            </div>
        </div>
    </section>
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h1>Servicios</h1>
                    <hr class="small" />
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-html5 fa-stack-2x"></i>
                                </span>
                                <h4 class="titulo-servico">
                                    <strong>SITIOS Y SISTEMAS WEB</strong>
                                </h4>
                                <p class="descr-servico">Especialistas en programación de sitios y sistemas web autoadministrables, estables y escalables.</p>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-desktop fa-stack-2x"></i>
                                </span>
                                <h4 class="titulo-servico">
                                    <strong>SOFTWARE A MEDIDA</strong>
                                </h4>
                                <p class="descr-servico">Desarrollamos sistemas personalizados que acompañan y fortalecen las necesidades reales de tu empresa.</p>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-shopping-cart fa-stack-2x"></i>

                                </span>
                                <h4 class="titulo-servico">
                                    <strong>PLATAFORMAS E-COMMERCE</strong>
                                </h4>
                                <p class="descr-servico">Integramos y diseñamos plataforma de e-commerce que mejoran la experiencia de usuario y la productividad de tu tienda.</p>

                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                    <i class="fa fa-mobile-phone fa-stack-2x"></i>

                                </span>
                                <h4 class="titulo-servico">
                                    <strong>APLICACIONES MÓVILES</strong>
                                </h4>
                                <p class="descr-servico">Diseñamos, desarrollamos y publicamos APPS para iOS, Android y Windows.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="page-section" id="contact">
        <div class="container wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
            <div class="text-center">
                <h2>Contacto</h2>
                <hr class="colored" />
            </div>

            <%--        <form name="sentMessage" id="contactForm" novalidate="">--%>
            <form id="form1" runat="server" role="form" data-toggle="validator">
                <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true"
                    EnablePageMethods="true" EnableScriptGlobalization="True">
                </asp:ScriptManager>

                <div class="row control-group divContactoLine divRowContacto">
                    <div class="form-group col-12 floating-label-form-group controls">
                        <%--<label>Nombre</label>--%>
                        <input type="text" class="form-control contactoStyle" placeholder="Nombre" id="name" required="required" data-validation-required-message="Complete este campo." aria-invalid="false" />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="row control-group divContactoLine divRowContacto">
                    <div class="form-group col-12 floating-label-form-group controls">
                        <%--  <label>Email</label>--%>
                        <input type="email" class="form-control contactoStyle" placeholder="Email" id="email" required="required" data-validation-required-message="Complete este campo." />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="row control-group divContactoLine divRowContacto">
                    <div class="form-group col-12 floating-label-form-group controls">
                        <%--                                <label>Teléfono</label>--%>
                        <input type="tel" class="form-control contactoStyle" placeholder="Teléfono" id="phone" required="" data-validation-required-message="Complete este campo." />
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <div class="row control-group divContactoLine divRowContacto">
                    <div class="form-group col-12 floating-label-form-group controls">
                        <%-- <label>Mensaje</label>--%>
                        <textarea rows="5" class="form-control contactoStyle" placeholder="Mensaje" id="message" required="" data-validation-required-message="Complete este campo."></textarea>
                        <p class="help-block text-danger"></p>
                    </div>
                </div>
                <br />
                <div id="success" class="alert"></div>
                <div class="row divRowContacto">

                    <div class="form-group col-12">

                        <div style="float: right" class="g-recaptcha" data-sitekey="6LdGPiAUAAAAACQ6y43D_Pzpbj7IzcjXSMbzBHgP"></div>

                        <button type="submit" class="btn btn-secondary btn-contacto" onclick="sendMail(); return false;">ENVIAR MENSAJE</button>

                        <%--  onclick="sendMail(); return false;"--%>
                        <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
                    </div>

                </div>
                <br />
            </form>

        </div>
    </section>
    <%--<hr class="colored" />--%>
    <footer>
        <section id="contactPie">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-lg-offset-1 text-center">
                        <h4><strong>Nativo Sistemas</strong>
                        </h4>
                        <p>
                                 Urquiza 1455 - Rosario - Santa Fe - Argentina
                        </p>
                        <ul class="list-unstyled">
                            <li><i class="fa fa-phone fa-fw"></i>(0341) 153340199</li>
                            <li><i class="fa fa-envelope-o fa-fw"></i><a href="mailto:info@nativosistemas.com">info@nativosistemas.com</a>
                            </li>
                        </ul>
                        <br />
                        <hr class="small" />
                        <p class="text-muted">Copyright &copy; <% Response.Write(DateTime.Now.Year.ToString()); %></p>
                    </div>
                </div>
            </div>
        </section>
        <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
    </footer>


    <% 
        if (System.Web.HttpContext.Current.Session["envioMail"] != null && System.Web.HttpContext.Current.Session["envioMail"].ToString() == "OK")
        {
            Response.Write( "<input id=\"hiddenEnvioMail\"  type=\"hidden\" value=\""+"OK" +"\"/>");
            System.Web.HttpContext.Current.Session["envioMail"] = null;
        }
         %>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src='https://www.google.com/recaptcha/api.js'></script>
    <script src="js/main.js?n=3"></script>
    <script type="text/javascript">
        $("#menu-close").click(function (e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#sidebar-wrapper").toggleClass("active");
        });
        $(function () {
            $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
        var fixed = false;
        $(document).scroll(function () {
            if ($(this).scrollTop() > 250) {
                if (!fixed) {
                    fixed = true;
                    $('#to-top').show("slow", function () {
                        $('#to-top').css({
                            position: 'fixed',
                            display: 'block'
                        });
                    });
                }
            } else {
                if (fixed) {
                    fixed = false;
                    $('#to-top').hide("slow", function () {
                        $('#to-top').css({
                            display: 'none'
                        });
                    });
                }
            }
        });
    </script>
</body>
</html>

