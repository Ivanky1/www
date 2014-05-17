<?php
header("CONTENT-TYPE: text/html; charset=utf-8");
define("GOODS","goods.xml");

function selectAll() { 
    $db = new PDO("mysql:host=localhost;dbname=gbook","root","");
    $sql = "SELECT * from msgs";
    $stmt = $db->query($sql);
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $order = array();
    while ($row = $stmt->fetch()) 
    $order[] = $row;
    return $order;
}
try {
    $db = new PDO("mysql:host=localhost;dbname=gbook","root","");
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
$dom = new DOMDocument("1.0","utf8");
$dom->formatOutput = true;
$dom->preserveWhiteSpace = false;
if (file_exists(GOODS)) { 
     $f = true;
     $dom->load(GOODS);
    $root = $dom->documentElement;
} else { 
    $root = $dom->createElement("goods");
    $dom->appendChild($root);
}
  if (!$f) {
 foreach(selectAll() as $value) { 
    
    $good = $dom->createElement("good"); 
    $id = $dom->createElement("id",$value['id']);
    $name = $dom->createElement("name",trim($value['name']));
    $email = $dom->createElement("email",$value['email']);
    $msg = $dom->createElement("msg",trim($value['msg']));
    $hh = $dom->createElement("hh",strip_tags(trim("ûפûאפûא")));
    
    $good->appendChild($id);
    $good->appendChild($name);
    $good->appendChild($email);
    $good->appendChild($msg);
    $good->appendChild($hh);
    
    $root->appendChild($good);
    } $dom->save(GOODS); exit();

 }
}catch(PDOException $e) { 
    echo $e->getMessage();
} 

?>


