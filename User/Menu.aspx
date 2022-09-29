<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="User_Menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%-- <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>--%>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Virtual Waiter - Restaurants Category Responsive Website </title>
    <!-- google-fonts -->
    <link href="//fonts.googleapis.com/css2?family=Josefin+Sans:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- //google-fonts -->
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="../assets/css/style-starter.css">
</head>

<body>
    <form id="form1" runat="server">
    <!--header-->
    <header id="site-header" class="fixed-top">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg stroke">
                <h1>
                    <a class="navbar-brand d-flex align-items-center" href="index.html">
                        Bistros <i class="fa fa-cutlery ml-2" aria-hidden="true"></i></a>
                </h1>
                <!-- if logo is image enable this   
    <a class="navbar-brand" href="#index.html">
        <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
    </a> -->
                <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse"
                    data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav ml-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About Us</a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact Us</a>
                        </li>
                            <%--<!-- search button -->
                        <div class="search-right">
                            <form action="#search" method="GET" class="search-box position-relative">
                                <div class="input-search">
                                    <input type="search" placeholder="Enter Keyword" name="search" required="required"
                                        autofocus="" class="search-popup">
                                </div>
                                <button type="submit" class="btn search-btn"><i class="fa fa-search"
                                        aria-hidden="true"></i></button>
                            </form>
                        </div>
                        <!-- //search button -->--%>
                    </ul>
                </div>
                <!-- toggle switch for light and dark theme -->
                <div class="cont-ser-position">
                    <nav class="navigation">
                        <div class="theme-switch-wrapper">
                            <label class="theme-switch" for="checkbox">
                                <input type="checkbox" id="checkbox">
                                <div class="mode-container">
                                    <i class="gg-sun"></i>
                                    <i class="gg-moon"></i>
                                </div>
                            </label>
                        </div>
                    </nav>
                </div>
                <!-- //toggle switch for light and dark theme -->
            </nav>
        </div>
    </header>
    <!--//header-->

    <!-- inner banner -->
    <div class="inner-banner">
        <div class="w3l-breadcrumb">
            <div class="container">
                <h4 class="inner-text-title font-weight-bold text-white mb-sm-3 mb-2">Our Menu</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><span class="fa fa-chevron-right mx-2" aria-hidden="true"></span>Menu</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //inner banner -->

    <!-- menu -->
    <div class="menu-w3ls py-5" id="menu">
        <div class="container py-md-5 py-4">
            <h3 class="title-big mb-2">Breakfast</h3>
            <div class="row menu-body">

             <div class="col-lg-6 menu-section pr-lg-5">
                        <!-- Item starts -->
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                        <asp:DataList ID="DataList3" runat="server" RepeatDirection="Horizontal" 
                           onitemcommand="DataList1_ItemCommand" Width="1695px">
                
                    <ItemStyle CssClass="col-md-4" />
                    <ItemTemplate>
                        <div class="" style="padding:10px">
                            <div class="row">
                                <asp:Image ID="Image1" class="img img-thumbnail img-responsive" runat="server" Height="121px" 
                                        ImageUrl='<%# Eval("photo") %>' Width="259px" />
                            </div>
                            <div class="row text-danger">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("itemname") %>'></asp:Label>
                                <br />
                            </div>
                            <div class="row text-right">
                                <span class="text-success" style="font-weight:bold;font-size:x-large">Rs<asp:Label ID="lblprice" runat="server"
                                        Text='<%# Eval("price") %>'></asp:Label>
                                    /-</span>
                            </div>
                            <div class="row">
                                <asp:Button ID="btnbuy" class="btn btn-success btn-block" runat="server" 
                          Font-Bold="True" Text="Buy" 
                                        CommandArgument='<%# Eval("itemname") %>' CommandName="buy" 
                                        oncommand="btnbuy_Command" onclick="btnbuy_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>

                        </div>
                        </div>
                <!-- Section starts: Breakfast -->
                -
                <!-- Section ends: Breakfast -->

                <!-- Section starts: Breakfast -->

            <div class="another-sec">
                <h3 class="title-big mb-2">Lunch</h3>
                <div class="row menu-body">
                    <!-- Section starts: Lunch -->
                    <div class="col-lg-6 menu-section pr-lg-5">
                        <!-- Item starts -->
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                            <%-- <div class="row no-gutters">
                                <div class="col-9 menu-item-name">
                                    <h6>The Ultimate Veggie</h6>
                                </div>
                                <div class="col-3 menu-item-price text-right">
                                    <h6>$36</h6>
                                </div>
                            </div>
                            <div class="menu-item-description">
                                <p>Lorem ipsum dolor sit amet, consectetur tredjh adipiscing elit.</p>
                            </div>
                        </div>
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                            <div class="row no-gutters">
                                <div class="col-9 menu-item-name">
                                    <h6>Chicken Salad Lunch Box</h6>
                                </div>
                                <div class="col-3 menu-item-price text-right">
                                    <h6>$23</h6>
                                </div>
                            </div>
                            <div class="menu-item-description">
                                <p>Lorem ipsum dolor sit amet, consectetur tredjh adipiscing elit.</p>
                            </div>
                        </div>--%>
                        <!-- Item ends -->


                       <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" 
                           onitemcommand="DataList1_ItemCommand">
                
                    <ItemStyle CssClass="col-md-4" />
                    <ItemTemplate>
                        <div class="" style="padding:10px">
                            <div class="row">
                                <asp:Image ID="Image1" class="img img-thumbnail img-responsive" runat="server" Height="133px" 
                                        ImageUrl='<%# Eval("photo") %>' Width="207px" />
                            </div>
                            <div class="row text-danger">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("itemname") %>'></asp:Label>
                                <br />
                            </div>
                            <div class="row text-right">
                                <span class="text-success" style="font-weight:bold;font-size:x-large">Rs<asp:Label ID="lblprice" runat="server"
                                        Text='<%# Eval("price") %>'></asp:Label>
                                    /-</span>
                            </div>
                            <div class="row">
                                <asp:Button ID="btnbuy" class="btn btn-success btn-block" runat="server" 
                          Font-Bold="True" Text="Buy" 
                                        CommandArgument='<%# Eval("itemname") %>' CommandName="buy" 
                                        oncommand="btnbuy_Command" onclick="btnbuy_Click" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                    </div>
                    <!-- Section ends: Lunch -->

                    <!-- Section starts: Lunch -->
                    <!-- Section ends: Lunch -->
                </div>
            </div>

            <div class="another-sec">
                <h3 class="title-big mb-2">&nbsp;</h3>
                <h3 class="title-big mb-2">Dinner</h3>
                <div class="row menu-body">
                    <!-- Section starts: Dinner -->
                    <div class="col-lg-6 menu-section pr-lg-5">
                        <%-- <!-- Item starts -->
                        <div class="menu-item">
                            <div class="row no-gutters">
                                <div class="col-9 menu-item-name">
                                    <h6>The Ultimate Veggie</h6>
                                </div>
                            </div>
                            <div class="menu-item-description">
                                <p>Lorem ipsum dolor sit amet, consectetur tredjh adipiscing elit.</p>
                            </div>
                        </div>
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                            <div class="row no-gutters">
                                <div class="col-9 menu-item-name">
                                    <h6>Chicken grill with sauce</h6>
                                </div>
                                <div class="col-3 menu-item-price text-right">
                                    <h6>$46</h6>
                                </div>
                            </div>
                            <div class="menu-item-description">
                                <p>Lorem ipsum dolor sit amet, consectetur tredjh adipiscing elit.</p>
                            </div>
                        </div>
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                            <div class="row no-gutters">
                                <div class="col-9 menu-item-name">
                                    <h6>Quinoa Fruit Salad</h6>
                                </div>
                                <div class="col-3 menu-item-price text-right">
                                    <h6>$56</h6>
                                </div>
                            </div>
                            <div class="menu-item-description">
                                <p>Lorem ipsum dolor sit amet, consectetur tredjh adipiscing elit.</p>
                            </div>
                        </div>
                        <!-- Item ends -->--%>

                        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" 
                           onitemcommand="DataList1_ItemCommand">
                
                    <ItemStyle CssClass="col-md-4" />
                    <ItemTemplate>
                        <div class="" style="padding:10px">
                            <div class="row">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" class="img img-thumbnail img-responsive" runat="server" Height="155px" 
                                        ImageUrl='<%# Eval("photo") %>' Width="280px" />
                            </div>
                            <div class="row text-danger">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("itemname") %>'></asp:Label>
                                <br />
                                <span class="text-success" style="font-weight:bold;font-size:x-large">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rs<asp:Label ID="lblprice" runat="server" 
                                    Text='<%# Eval("price") %>'></asp:Label>
                                /- </span>&nbsp;</div>
                            <div class="row">
                                <asp:Button ID="btnbuy" class="btn btn-success btn-block" runat="server" 
                          Font-Bold="True" Text="Buy" 
                                        CommandArgument='<%# Eval("itemname") %>' CommandName="buy" 
                                        oncommand="btnbuy_Command" onclick="btnbuy_Click" Width="328px" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>

                    </div>
                    <!-- Section ends: Dinner -->

                    <!-- Section starts: Dinner -->
                    <div class="col-lg-6 menu-section pl-lg-5">
                        <!-- Item starts -->
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <!-- Item ends -->
                        <!-- Item starts -->
                        <div class="menu-item">
                            <div class="row no-gutters">
                                <div class="col-3 menu-item-price text-right">
                                </div>
                            </div>
                            <div class="menu-item-description">
                            </div>
                        </div>
                        <!-- Item ends -->
                    </div>
                    <!-- Section ends: Dinner -->
                </div>
            </div>
        </div>
    </div>
    <!-- //menu -->

    <!-- footer -->
    <footer class="w3l-footer-29-main">
        <div class="footer-29-w3l py-5">
        </div>
    </footer>
    <!-- //footer -->

    <!-- Js scripts -->
    <!-- move top -->
    <button onclick="topFunction()" id="movetop" title="Go to top">
        <span class="fa fa-level-up" aria-hidden="true"></span>
    </button>
    <script>
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                document.getElementById("movetop").style.display = "block";
            } else {
                document.getElementById("movetop").style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        }
    </script>
    <!-- //move top -->

    <!-- common jquery plugin -->
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
    <!-- //common jquery plugin -->

    <!-- theme switch js (light and dark)-->
    <script src="../assets/js/theme-change.js"></script>
    <script>
        function autoType(elementClass, typingSpeed) {
            var thhis = $(elementClass);
            thhis.css({
                "position": "relative",
                "display": "inline-block"
            });
            thhis.prepend('<div class="cursor" style="right: initial; left:0;"></div>');
            thhis = thhis.find(".text-js");
            var text = thhis.text().trim().split('');
            var amntOfChars = text.length;
            var newString = "";
            thhis.text("|");
            setTimeout(function () {
                thhis.css("opacity", 1);
                thhis.prev().removeAttr("style");
                thhis.text("");
                for (var i = 0; i < amntOfChars; i++) {
                    (function (i, char) {
                        setTimeout(function () {
                            newString += char;
                            thhis.text(newString);
                        }, i * typingSpeed);
                    })(i + 1, text[i]);
                }
            }, 1500);
        }

        $(document).ready(function () {
            // Now to start autoTyping just call the autoType function with the 
            // class of outer div
            // The second paramter is the speed between each letter is typed.   
            autoType(".type-js", 200);
        });
    </script>
    <!-- //theme switch js (light and dark)-->

    <!-- MENU-JS -->
    <script>
        $(window).on("scroll", function () {
            var scroll = $(window).scrollTop();

            if (scroll >= 80) {
                $("#site-header").addClass("nav-fixed");
            } else {
                $("#site-header").removeClass("nav-fixed");
            }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
            $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
            $(window).on("resize", function () {
                if ($(window).width() > 991) {
                    $("header").removeClass("active");
                }
            });
        });
    </script>
    <!-- //MENU-JS -->

    <!-- disable body scroll which navbar is in active -->
    <script>
        $(function () {
            $('.navbar-toggler').click(function () {
                $('body').toggleClass('noscroll');
            })
        });
    </script>
    <!-- //disable body scroll which navbar is in active -->

    <!--bootstrap-->
    <script src="../assets/js/bootstrap.min.js"></script>
    <!-- //bootstrap-->
    <!-- //Js scripts -->
    </form>
</body>

</html>
