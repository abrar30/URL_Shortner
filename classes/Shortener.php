<?php 

class Shortener {
    protected $db;
    //default construct
    public function __construct(){
        $this->db = new mysqli('localhost','root','','urlshortnerdb');
    }
    
    //generate code
    
    protected function generateCode($num){
      return base_convert($num,10,36);  
    }
    
     //function to MakeCode
    
    public function makeCode($url){
        $url = trim($url);
        if(!filter_var($url, FILTER_VALIDATE_URL)){
            return '';
        }
        $url = $this->db->escape_string($url);
        
        //check if URL exists 
        
        $exists = $this->db->query("SELECT code FROM links where url = '{$url}'");
        
        if($exists->num_rows){
            return $exists->fetch_object()->code;
        }
        else{
            //insert record without a code 
            $insert = $this->db-> query("INSERT INTO links (url,created) VALUES ('{$url}',NOW())");
            
            //Generate code based on inserted ID
            $code = $this->generateCode($this->db->insert_id);
            
            //update the record with generated code 
            $this->db->query("UPDATE links SET code = '{$code}' WHERE url = '{$url}'");
            return $code;
        }
    }
    
    //GetURL function will return to original page 
    
    public function getURL($code){
       $code = $this->db->escape_string($code);
      
        $code = $this->db->query("SELECT url FROM links WHERE code = '$code'");
        if($code->num_rows){
            return $code->fetch_object()->url;
        }
         return '';
    }
}