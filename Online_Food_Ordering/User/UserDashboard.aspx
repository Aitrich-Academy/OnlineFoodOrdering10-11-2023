<%@ Page Title="" Language="C#" MasterPageFile="~/User/Restuarant.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="Online_Food_Ordering.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="UserStyle/UserStyle.css" rel="stylesheet" />
    <style type="text/css">
       
        .auto-style3 {
            width: 4000px;
            height: 6000px;
        }
        .auto-style4 {
            width: 5596px;
            height: 3731px;
        }

        .orderborder{

            border:2px solid maroon;
            width:201px;
            height:37px;
            margin-left: 1019px;
            border-radius:10px;
            margin-top: 0px;
        }

        .learnmore{

            border:2px solid maroon;
width:201px;
height:37px;
margin-left: 1024px;
border-radius:10px;
margin-top: 0px;



        }

        body{



             background-image: url('../images/samosa.jpg') !important; /* Adjust the path as needed */




        }
        .containerstyle{

              background-image: url('../images/samosa.jpg'); /* Adjust the path as needed */
   
             

             
        }
        .auto-style5 {
            width: 300px;
            height: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="UsrDshBrdContent2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="containerstyle">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1 class="m-size-24 m-text-align-center" style="box-sizing: border-box; border: 0px solid rgb(51, 51, 51); font-size: 60px; margin: 0px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-weight: 400; color: rgb(38, 38, 38); font-family: Merienda, &quot;Merienda Fallback&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        <span class="m-font-size-24" m-font-size-set="true" style="box-sizing: border-box; border: 0px solid rgb(51, 51, 51); -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; display: initial;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></h1>
    <h1 class="m-size-24 m-text-align-center" style="box-sizing: border-box; border: 0px solid rgb(51, 51, 51); font-size: 60px; margin: 0px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-weight: 400; color: rgb(38, 38, 38); font-family: Merienda, &quot;Merienda Fallback&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="m-font-size-24" m-font-size-set="true" style="box-sizing: border-box; border: 0px solid rgb(51, 51, 51); -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; display: initial;">&nbsp;Experience Nirvana Indic</span></h1>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a id="1940971697" style="box-sizing: border-box; border: 0px solid rgb(51, 51, 51); vertical-align: inherit; -webkit-font-smoothing: antialiased; outline: 0px; font-style: italic; text-align: center; color: rgb(70, 57, 57); text-decoration: none; -webkit-tap-highlight-color: transparent; font-family: &quot;Josefin Sans&quot;, &quot;Josefin Sans Fallback&quot;; font-size: 18px; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 600; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255);">
    <img id="1820647351" class="" data-dm-image-path="https://irp-cdn.multiscreensite.com/ba1cdb73/dms3rep/multi/border-04.png" height="26.703125" onerror="handleImageLoadError(this)" src="https://lirp.cdn-website.com/e8125eda/dms3rep/multi/opt/border-04-225w.png" style="box-sizing: border-box; border: 0px; max-width: 100%; display: inline-block; vertical-align: top; -webkit-font-smoothing: antialiased; height: auto; width: 188.172px; -webkit-tap-highlight-color: transparent;" width="188.171875" /></a><br />
    <br />
    <br />
    <img alt="" class="auto-style3" src="images/restuarant%20interior 6.jpg" style="width:410px; height:413px;border-radius:10px; margin-left: 40px;"/>&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style4" src="images/restuarant%20interior3.jpg" style="width:410px ;border-radius:10px; height:413px" /><div class="orderborder">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <a href="Categories.aspx" class="UsrOdernowlbl">Order Now...</a>

        </div>

    <br />
    <br />
    &nbsp;<div class="learnmore">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <a href="AboutUs.aspx" class="UsrOdernowlbl">Learn More</a>

        </div>

    <br />
    <br />
        </div>
</asp:Content>
