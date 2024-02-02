<%-- 
    Document   : index
    Created on : Jan 31, 2024, 12:05:43 PM
    Author     : antonewton
--%>

<%@page import="com.home.helper.ConnectionProv"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/dist/boxicons.js" integrity="sha512-Dm5UxqUSgNd93XG7eseoOrScyM1BVs65GrwmavP0D0DujOA8mjiBfyj71wmI2VQZKnnZQsSWWsxDKNiQIqk8sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Casa Eficiente</title>
    
    <style>
        .banner-background{
            clip-path: polygon(50% 0%, 100% 0, 100% 72%, 69% 89%, 29% 82%, 0 94%, 0 0);
            background-image: url("img/back01.jpg");
            background-repeat: no-repeat;
            background-size: cover; 
            background-position: center; 
            
        }
    </style>
    
    
</head>
<body>
    
    
    
    <!-- NavBar -->
    <%@include file="normal_navBar.jsp"%>
    
    <!<!-- Banner -->
    <div class="container-fluid p-0 m-0 mb-4 banner-background ">
        <div class="jumbotron">
            <div class="container pt-4">
                
                <h3 class="display-3">O CONFORTO PARA VOCÊ</h3>
                <h3>Somos todos frutos da terra</h3>
                <br><br>
                <button class="btn btn-outline-dark w-25">Alugar</button>
                <button class="btn btn-outline-dark w-25">Comprar</button>
            </div>
            
            <br><br><br><br><br>
            
            
        </div>
    </div>
    
    <br>
    
    <div class="container ">
        
        <div class="row mb-4">
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            
        </div>
        
        <div class="row mb-4">
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            <div class="col-md-4">
                 <div class="card" style="width: 15rem;">
                     <img src="img/card.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-dark">Ver mais</a>
                    </div>
                     
                </div>
            </div>
            
        </div>
        
        
    </div>
 
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  
  <script src="js/script.js"></script>
</body>
</html>