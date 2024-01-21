function validateFields(){
    const email =document.getElementById('email').value;
    const loginBtn = document.querySelector('.loginbtn');
    if(!email){
        loginBtn.disabled=true;
    }else
    if(validarEmail(email)){
        loginBtn.disabled=false;
        
    }else{
        loginBtn.disabled=true;
        
    }
    
}

function validarEmail(email) {
    // Expressão regular para validar o formato do e-mail
    var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  
    // Testa o e-mail usando a expressão regular
    return regex.test(email);
  }