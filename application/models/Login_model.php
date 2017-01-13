<?php
    class Login_model extends CI_Model {
        
        public $user_email;
    
            public function __construct()
            {
                    //$this->load->database();
                    parent::__construct();
            }
            
            // Method used to validate email with database
            function validate()
            {
                $this->db->where('user_email', $this->input->post('email'));
                $query = $this->db->count_all_results('user_login');
                
                return $query >= 1;
            }
            
            function add_user()
            {
                $this->user_email = $this->input->post('email');
                $insert = $this->db->insert('user_login', $this);
                
                // Returns either true or false
                return $insert;
            }
    }
?>