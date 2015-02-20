<?php
try{
$handler = new PDO('mysql:host=josesebastianmanunta.ipagemysql.com;dbname=animated_share', 'smanunta', 'x');
$handler->setattribut(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}catch(PDOException $e) {
  echo "the exception has been caught, and there is a DB problem :( DONT CRY";
  die();
}

/*EXAMPLE PDO QUERY
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
EX2  --in this example:
1. conn to sql server 
2. create class used for data 
3.setting the fetch() mode to FETCH_CLASS and give it the class to use
4.running the while loop and echoed data.
class nameofclass
{
  public $x, $y, $z, $entry;
  
  public function __construct()
  {
    $this->entry = "{$this->x} and {$this->x} and {$this->x}";
  }
}
$query= $handler->query('SELECT * FROM x');
$query->setFetchMode(PDO::FETCH_CLASS, 'nameofclass')   //same name as line 27
while($row = $query->fetch())
{
  echo $row->entry, '<br>';
}
*/
?>
