<?php

require_once("config.php");

$sql = new Sql();
$usuarios = $sql->select("SELECT * FROM tb_usuarios");
echo json_encode($usuarios);



//carrega um usuaro
$root = new Usuario();
$root->loadById(7);

echo $root;

echo "<br>";
echo "<br>";

//carrega uma lista de ususarios
$lista = Usuario::getList();

echo json_encode($lista);

echo "<br>";
echo "<br>";

//carrega uma lista de usuarios buscando pelo login
$search = Usuario::search("jo");

echo json_encode($search);

echo "<br>";
echo "<br>";

//carrega um usuario usando login e senha
$usuario = new Usuario();
$usuario->login("tiago", "top10");

echo $usuario;

echo "<br>";
echo "<br>";

$aluno = new Usuario("joaquim", "1234sdgj");

//$aluno->setDeslogin("aluno");
//$aluno->setDessenha("di09lu16");

$aluno->insert();

echo $aluno;

?>