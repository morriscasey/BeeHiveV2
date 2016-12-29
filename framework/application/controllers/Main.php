<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Main extends CI_Controller {

    public function index()
    {
      $data['title'] = "Mite Recording";
  		$this->load->view('templates/header.php', $data);
  		$this->load->view('main/add_entry.php');
  		$this->load->view('templates/footer.php');
    }
  }
?>
