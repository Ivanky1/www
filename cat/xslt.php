<?php
//header("Content-Type: text/html; utf-8");
$xml = new DOMDocument;
$xml->load("catalog.xml");

$xsl = new DOMDocument;
$xsl->load("catalog.xsl");

$proc = new XSLTProcessor;
$proc->importStylesheet($xsl);

$html = $proc->transformToXML($xml);

echo $html;

?>
<meta http-equiv="content-type" content="text/html; charset=utf-8"  />