<?php
abstract class ImageType { 
    protected $type;
    public function returnType() { 
        return $this->type;
    }
}
class GIFType extends ImageType { 
    function __construct() { 
        $this->type = "GIF";
    }
}
class JPGType extends ImageType { 
    function __construct() { 
        $this->type = "JPEG";
    }
}
class OtherType extends ImageType { 
    function __construct() { 
        $this->type = "Неизвестный";
    }
}
class ImageFactory { 
    static function checkType($name) { 
        if (strpos($name,"jpg"))
        return new JPGType();
        elseif (strpos($name,"gif"))
        return new GIFType();
        else return new OtherType();
    }
}
$ar = array('test.jpg','test.gif','test.txt');
foreach($ar as $v) { 
    
echo $v." Этот тип ".ImageFactory::checkType($v)->returnType()."<br>";     
}


?>