<?php
try{
$handler = new PDO('mysql:host=josesebastianmanunta.ipagemysql.com;dbname=animated_share', 'smanunta', 'x');
$handler->setattribut(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e) {
  echo "the exception has been caught, and there is a DB problem :( DONT CRY";
  die();
}

/*EXAMPLE PDO QUERY*/
$query= $handler->query('SELECT * FROM x');
while($row = $query->fetch())
{
  echo $row['COLUM_NAME'], '<br>';
}

$row = $query->fetch(PDO::FETCH_BOTH))
$row = $query->fetch(PDO::FETCH_ASSOC))
$row = $query->fetch(PDO::FETCH_NUM))
$row = $query->fetch(PDO::FETCH_OBJ))  CREATES AS AN OBJECT
EX  
while($row = $query->fetch(PDO::FETCH_OBJ))
{
  echo $row->COLUMM_NAME, '<br>';
}
ex2
class nameofclass{
  public $x, $y, $z;
  
}

$query= $handler->query('SELECT * FROM x');

while($row = $query->fetch(PDO::FETCH_OBJ))
{
  echo $row->COLUMM_NAME, '<br>';
}
