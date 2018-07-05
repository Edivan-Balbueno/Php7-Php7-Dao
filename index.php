<?php

require_once("config.php");


$aluno = new Usuario();

$aluno->setDeslogin("aluno");
$aluno->setDessenha("di09lu16");

$aluno->insert();

echo $aluno;

?>