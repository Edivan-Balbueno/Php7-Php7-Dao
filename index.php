<?php

require_once("config.php");



$aluno = new Usuario("joaquim", "1234sdgj");

//$aluno->setDeslogin("aluno");
//$aluno->setDessenha("di09lu16");

$aluno->insert();

echo $aluno;

?>