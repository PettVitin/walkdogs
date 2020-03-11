<?php
//Passar pra Davini

include ('../bootstrap-4.1.3-dist/conexao/conexao.php');




// Inicia sessões 
session_start(); 
// Usuário não forneceu a senha ou o login 





// Recupera o login 
$login = isset($_POST["login"]) ? addslashes(trim($_POST["login"])) : FALSE; 
// Recupera a senha, a criptografando em MD5 
$senha = isset($_POST["senha"]) ? md5(trim($_POST["senha"])) : FALSE; 
//Mostra qual tipo de Usuario é


if(!$login || !$senha){ 
   //colocar um aviso sob o modal.

    echo "Você deve digitar sua senha e login!"; 
    exit; 
} 

$sql = "
SELECT * FROM cadastro
WHERE login = '".$login."'
AND senha = '".$senha."'
";


$result_id = @mysqli_query($conecta, $sql) or die("Erro no banco de dados!"); 
$total = @mysqli_num_rows($result_id); 


// Caso o usuário tenha digitado um login válido o número de linhas será 1.. 
if($total) 
{ 
    // Obtém os dados do usuário, para poder verificar a senha e passar os demais dados para a sessão 
    $dados = @mysqli_fetch_array($result_id); 

    // Agora verifica a senha 
    if(!strcmp($senha, $dados["senha"])) 
    { 
        // TUDO OK! Agora, passa os dados para a sessão e redireciona o usuário 
        $_SESSION["id"]= $dados["ID_Cadastro"]; 
        $_SESSION["login"] = stripslashes($dados["login"]); 
        $_SESSION["nome"] = $dados['nomeCadastro']; 

          // echo json_encode( $_SESSION ) ; exit ;   
        header("Location: dogwalker.html"); 
        exit; 
    } 
    // Senha inválida 
    else
    { 
    "Senha inválida!"; 
    exit; 
    } 
} 
    // Login inválido 
else
{ 
    echo "O login fornecido por você é inexistente!"; 
    exit; 
} 


?>