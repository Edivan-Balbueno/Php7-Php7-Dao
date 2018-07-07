<?php

require_once("config.php");

?>

<?php

require_once("config.php");
/*
$sql = new Sql();
$usuarios = $sql->select("SELECT * FROM tb_usuarios");
echo json_encode($usuarios);
*/


//$aluno = new Usuario("aluno42", "@alun523");
$aluno = new Usuario("joão", "jo123ao");

//$aluno->setDeslogin("aluno");
//$aluno->setDessenha("di09lu16");

$aluno->insert();

echo $aluno;

?>