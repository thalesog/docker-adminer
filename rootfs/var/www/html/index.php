<?php
function adminer_object() {
  
  class AdminerSoftware extends Adminer {
    
    function name() {
      return 'thalesog/Adminer';
    }
    
    function permanentLogin($i = false) {
      return '2d70d5753fa50a9046faa3e03a70504ea1372d79bd87cb54c1f83185ae04ddab';
    }
    
  }
  
  return new AdminerSoftware;
}

include './adminer.php';