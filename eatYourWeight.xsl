<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="html" indent="yes"/>

    <!-- Plantilla principal -->
    <xsl:template match="/">
        <html lang="es">
        <head>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
            <style>
                body{
                    background-color:#f5f5f5;
                }
                .calculadora{
                    display: block;
                    margin-left: auto;
                    margin-right: auto;
                    margin-top: 150px;
                }
                header{
                    background-color:#ffbd59;
                }
                <!-- Barra lateral-->
                .sidenav {
                    height: 100%;
                    width: 300px;
                    position: fixed;
                    z-index: 1;
                    top: 0;
                    left: 0;
                    background-color: #ffbd59;
                    overflow-x: hidden;
                    padding-top: 10px;
                    margin-top: 150px;
                    padding-left: 20px;
                  }
                  
                  .sidenav a {
                    padding: 6px 6px 6px 32px;
                    text-decoration: none;
                    font-size: 25px;
                    color: #818181;
                    display: block;
                  }
                  
                  .sidenav a:hover {
                    color: #f1f1f1;
                  }
                  plan{
                    background-color:#ffbd59;

                  }
                  .container{
                    margin-left: 460px;
                    margin-bottom: 200px;
                    margin-top: 70px;
                  }
                  ul{
                    display:flex;
                  }
                  .btn-float {
                    position: fixed;
                    bottom: 20px;
                    right: 20px;
                    border: none;
                    border-radius: 50%;
                    width: 50px;
                    height: 50px;
                    text-align: center;
                    cursor: pointer;
                }
                .btn-float img {
                    width: 60px;
                    height: 60px;
                }
            </style>
            <title><xsl:value-of select="title"/></title>
        </head>
        <body>
            <header>
                <div style="color:#F5F5F5;">
                      <table style="width: 100%; overflow: auto;">
                          <tr style="width: 62%; float: right; margin-top: 50px; font-family: arial black;">
                              <td>
                                  <p style="font-size: 300%; color: f5f5f5;">EAT YOUR WEIGHT</p>
                              </td>
                          </tr>
                      </table>
                  </div>
              </header>
            <!--IMG link a la calculadora-->
              <a href="LIFT YOUR WEIGHT/index.html" target="_blank"><img class="calculadora" src="Images/CalculadoraIMC.png" alt="Imagen con link a calculadora imc" width="650px" height="405px"></img></a>
            <!--side navbar-->
            <div class="sidenav">
                <hr/>
                <a href="#tipo"><h2>Tipos</h2></a>
                <hr/>
                <p><xsl:value-of select="//bajarmasa/platos/plato[@calorias=234]/@tipo"/></p>
                <p><xsl:value-of select="//bajarmasa/platos/plato[@calorias=348]/@tipo"/></p>
                <p><xsl:value-of select="//bajarmasa/platos/plato[@calorias=264]/@tipo"/></p>
                <p><xsl:value-of select="//bajarmasa/platos/plato[@calorias=300]/@tipo"/></p>
                <p><xsl:value-of select="//bajarmasa/platos/plato[@calorias=415]/@tipo"/></p>
                <hr/>
                <a href="#alergeno"><h2>Alergias</h2></a>
                <hr/>
                <xsl:for-each select="document('eatYourWeight.xsd')/xs:schema/xs:group//xs:enumeration">
                <xsl:sort select="@value"/>
                    <p><xsl:value-of select="@value"/></p>
                </xsl:for-each>
              </div>
            <!-- Botón flotante -->
            <a href="#Top" class="btn-float">
                <img src="Images/flechaArriba.png" alt="Subir"/>
            </a>
              <br/><br/><br/><br/><br/>
                  <!-- Plan bajar masa-->
    <div>
        <table style="width: 50%; overflow: auto; background-color:#ffbd59; margin: auto;">
            <tr style="width: 70%; float: right; margin-top: 50px; font-family: arial black;">
                <td>
                    <p style="font-size: 250%; color: #f5f5f5;">Plan bajar masa</p>
                </td>
            </tr>
        </table>
    </div>
    <br/>
    <br/>
    <div class="container">
        <div class="row">
            <div class="col-md-3"><img src="Images/receta-de-salmon-a-la-plancha-con-salsa-agridulce.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=234]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=234]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/boloñesa de lentejas.png" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=348]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=348]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/PastaAlfredoConPollo.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=264]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=264]/@calorias"/></h5>
            </div>
        </div>
        <br/>
        <br/>
        <div class="row">
            <div class="col-md-3"><img src="Images/medallones de Ternera.png" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=300]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=300]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/Zapallo spaghetti.png" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=365]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=365]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/1.-Brocheta-de-camaron-salsa-de-aji-chipotle.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//bajarmasa/platos/plato[@calorias=415]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//bajarmasa/platos/plato[@calorias=415]/@calorias"/></h5>
            </div>
        </div>
    </div>
    <!-- Plan subir masa-->
    <div>
        <table style="width: 50%; overflow: auto; background-color:#ffbd59; margin: auto;">
            <tr style="width: 70%; float: right; margin-top: 50px; font-family: arial black;">
                <td>
                    <p style="font-size: 250%; color: #f5f5f5;">Plan subir masa</p>
                </td>
            </tr>
        </table>
    </div>
    <br/>
    <br/>
    <div class="container">
        <div class="row">
            <div class="col-md-3"><img src="Images/sopaGarbanzos.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=400]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=400]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/Taco bowl.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=340]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=340]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/Carne guisada con arroz.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=426]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=426]/@calorias"/></h5>
            </div>
        </div>
        <br/>
        <br/>
        <div class="row">
            <div class="col-md-3"><img src="Images/Curry de garbanzos.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=406]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=406]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/PASTAS-DE-GENOVESA.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=613]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=613]/@calorias"/></h5>
            </div>
            <div class="col-md-3"><img src="Images/Pollo al horno.jpg" alt="..." class="img-thumbnail"/>
                <h4><xsl:value-of select="//subirmasa/platos/plato[@calorias=550]/nombre"/></h4>
                <h5>Calorías: <xsl:value-of select="//subirmasa/platos/plato[@calorias=550]/@calorias"/></h5>
            </div>
        </div>
    </div>



    <!-- Lista de platos con sus alergenos-->
    <table id="alergeno" style="width: 50%; overflow: auto; background-color:#ffbd59; margin: auto;">
        <tr style="width: 70%; float: right; margin-top: 50px; font-family: arial black;">
            <td>
                <p style="font-size: 250%; color: #f5f5f5;">Platos ordenados por alérgenos</p>
            </td>
        </tr>
    </table>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                        <h4>Platos con: Glúten</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='gluten'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
            <div class="col-md-3">
                        <h4>Platos con: Crustáceo</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='crustaceo'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
            <div class="col-md-3">
                        <h4>Platos con: Pescado</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='pescado'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                        <h4>Platos con: Apio</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='apio'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
            <div class="col-md-3">
                        <h4>Platos con: Mostaza</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='mostaza'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
            <div class="col-md-3">
                        <h4>Platos con: Soja</h4>
        <xsl:for-each select="//plato">
            <xsl:if test="alergenos/alergeno='soja'">
                <div class="col-md-3">
                    <li>
                        <ul><xsl:value-of select="nombre"/></ul>
                    </li>
                </div>
            </xsl:if>
        </xsl:for-each>
            </div>
        </div>
    </div>

<!-- Platos por Tipos -->
<table id="tipo" style="width: 50%; overflow: auto; background-color:#ffbd59; margin: auto;">
    <tr style="width: 70%; float: right; margin-top: 50px; font-family: arial black;">
        <td>
            <p style="font-size: 250%; color: #f5f5f5;">Platos ordenados por tipo</p>
        </td>
    </tr>
</table>
    <div class="container">
        <div class="row">
        <xsl:for-each select="//plato">
        <xsl:sort select="@tipo"></xsl:sort>
            <xsl:choose>
                <xsl:when test="@tipo='pescado'">
                    <div class="col-md-4">
                        <h4>Pescado</h4>
                        <li>
                            <ol><xsl:value-of select="nombre"/></ol>
                        </li>
                    </div>
                </xsl:when>
                <xsl:when test="@tipo='vegano'">
                    <div class="col-md-4">
                        <h4>Vegano</h4>
                        <li>
                            <ol><xsl:value-of select="nombre"/></ol>
                        </li>
                    </div>
                </xsl:when>
                <xsl:when test="@tipo='ave'">
                    <div class="col-md-4">
                        <h4>Ave</h4>
                        <li>
                            <ol><xsl:value-of select="nombre"/></ol>
                        </li>
                    </div>
                </xsl:when>
                <xsl:when test="@tipo='carne'">
                    <div class="col-md-4">
                        <h4>Carne</h4>
                        <li>
                            <ol><xsl:value-of select="nombre"/></ol>
                        </li>
                    </div>
                </xsl:when>
                <xsl:when test="@tipo='crustaceo'">
                    <div class="col-md-4">
                        <h4>Crustáceo</h4>
                        <li>
                            <ol><xsl:value-of select="nombre"/></ol>
                        </li>
                    </div>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
        </div>
    </div>
    <div class="container">
        <div class="col">
            <h3>Solo se podrán hacer envios en los siguientes códigos Postales:</h3>
            <xsl:for-each select="document('envios.xml')/dataroot/Tabla1">
                <li><xsl:value-of select="CP"/></li>
            </xsl:for-each>
        </div>
    </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
