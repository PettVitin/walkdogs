<?php
//Aqui é feito o cadastro de usuarios

include ('../bootstrap-4.1.3-dist/conexao/conexao.php');

	$usuarios = $_POST['usuarios'];
	$login = $_POST['login'];
	$senha = md5($_POST['senha']);

	$usuario = utf8_decode($usuario);
	
	$result_usuario = "INSERT INTO cadastro (usuarios, login, senha) 
    VALUES ('$usuarios', '$login', '$senha')";
	$resultado_usuario = mysqli_query($conecta, $result_usuario);

	if( !$resultado_usuario ){
		echo "deu erro" . mysqli_error( $conecta ) ;
		exit ;
	}
	
		if(mysqli_affected_rows($conecta) != 0){
				echo "
					Usuário Cadastrado com Sucesso
				";	
			}else{
				echo "
					Deu Erro!
				";	
			}


			header('location:index.html?pagina=caes');
?>

