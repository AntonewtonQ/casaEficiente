<%-- 
    Document   : register_page
    Created on : Feb 1, 2024, 2:23:53 AM
    Author     : antonewton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.0/dist/boxicons.js" integrity="sha512-Dm5UxqUSgNd93XG7eseoOrScyM1BVs65GrwmavP0D0DujOA8mjiBfyj71wmI2VQZKnnZQsSWWsxDKNiQIqk8sQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Casa Eficiente</title>
    </head>
    <body>
        
        <!-- NavBar -->
    <%@include file="normal_navBar.jsp"%>
        
        <main class="d-flex align-items-center" style="margin-top: 20px" >
            
            <div class="container">
                
                <div class="col-md-6 offset-md-3">
                
                     <div class="card">
                            <div class="card-header">
                                <p>Faça o seu registro</p>
                            </div>
                            <div class="card-body">
                                <form id="reg-form" action="RegisterServlet" method="POST">
                                    
                                    <div class="form-group mb-3">
                                      <label for="user_name" class="form-label">Nome de Usuario</label>
                                      <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Digite seu nome">
                                    </div>
                                    
                                    <div class="form-group mb-3">
                                      <label for="user_email" class="form-label">Email</label>
                                      <input name="user_email" type="email" class="form-control" id="user_email" aria-describedby="emailHelp" placeholder="Digite seu email">
                                      <div id="emailHelp" class="form-text">Nós nunca partilhamos o seu email.</div>
                                    </div>
                                    
                                    <div class="form-group mb-3">
                                      <label for="user_password" class="form-label">Palavra-Passe</label>
                                      <input name="user_password" type="password" class="form-control" id="user_password" placeholder="Digite sua palavra-passe">
                                    </div>
                                    
                                    <div class="form-group mb-3">
                                        <textarea name="about" id="" class="form-control" cols="5" rows="5" placeholder="Adicionar Descrição"></textarea>
                                    </div>
                                    
                                    
                                    <div class="mb-3 form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="check_box">
                                        <label class="form-check-label" for="check_box">Aceitar Termos e condições</label>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-success">Criar Conta</button>
                                    
                                    
                                </form>
                            </div>
                         <div class="card-footer">
                             
                             
                         </div>
                            
                        </div>
                
                </div>
                
            </div>
            
        </main>
        
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  
        <script src="js/script.js"></script>
        
        <script>
            
            $(document).ready(function(){
                console.log("loaded...");

                $('#reg-form').on('submit',function(event){
                    event.preventDefault();

                    const form = new FormData(this);

                    //Send Register Servlet
                    $.ajax({
                       url:"RegisterServlet",
                       type:"POST",
                       data: form,
                       success: function (data, textStatus, jqXHR){
                           console.log(data);
                           
                           if(data.trim()==='done'){
                                swal("Registrado com sucesso!","Success").then((value)=>{
                                  window.location = "login.jsp";
                               });
                           }else{
                               swal("Preencha os campos de forma correta!");
                           }
                           
                       },
                       error: function (jqXHR, textStatus, errorThrown){
                           swal("Preencha os campos de forma correta!");
                       },
                       processData:false,
                       contentType:false
                    });
                });
            });

        </script>
    </body>
</html>
