<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ProyectoV1.Inicio" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   
    <br>
    <br>
    <br>
    <br>
    <br>
    
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

     <div class="item active">
     <center><img src="Imagenes/vista.jpg" style="width: 932px; height: 407px" /><br />
         <br />
         </center>
     <div class="carousel-caption" style="left: 15%; right: 15%; bottom: 20px">
     </div>
     </div>

    <div class="item">
   <center> <img src="Imagenes/inicio.jpg" width="932" height="407" /></center>
    <div class="carousel-caption">
    </div>
    </div>
    
      <div class="item">
       <center> <img src="Imagenes/inicio1.jpg" width="932" height="407" /></center>
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
       <center> <img src="Imagenes/inicio2.jpg"  width="932" height="407" /></center>
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
        <center><img src="Imagenes/inicio3.jpg"   width="932" height="407" /></center>
        <div class="carousel-caption">
        
        </div>
      </div>

      <div class="item">
        <center><img src="Imagenes/inicio4.jpg"  width="932" height="407" /></center>
        <div class="carousel-caption">
         
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        
            
    <div class="jumbotron"> 
    <h1> <span style="font-size: xx-large;">Misión:</span> </h1>
    <p class="lead"><span style="font-family: arial,helvetica,sans-serif;"><span style="font-size: medium;">Proveer un servicio integral de hotelería de calidad, calidez a todos nuestros huéspedes y clientes haciendo de la excelencia nuestra carta de presentación.</span></span></p>
    </div>
    <div class="jumbotron">
    <h2>Visión:</h2>
    <p class="lead"><span style="font-family: arial,helvetica,sans-serif;"><span style="font-size: medium;">
    Representar la hospitalidad del Hotel Atacames 2, preservando y promoviendo nuestros valores culturales, sociales y ambientales y creando experiencias únicas que motiven a nuestros huéspedes a volver.</span></span></p>
    </div>
    <center><p><a href="Reserva.aspx" class="btn btn-primary btn-lg">Reserve Ahora &raquo;</a></p></center>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
  

</asp:Content>
