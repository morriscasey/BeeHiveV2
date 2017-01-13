<?php
  defined('BASEPATH') OR exit('No direct script access allowed');

  class Main extends CI_Controller {

    public function index($page = 'overview')
    {
      if ( ! file_exists(APPPATH.'views/main/'.$page.'.php'))
      {
          show_404();
      }

      $data['title'] = ucfirst($page); // Capitalize the first letter
      $data[$page] = 'class="active"'; // Set Link active
      $this->load->view('templates/main/header.php', $data);
      $this->load->view('templates/main/nav.php');
      $this->load->view('templates/main/sidebar.php');
      $this->load->view('main/'.$page);
      $this->load->view('templates/main/footer.php');
    }

    // public function add()
    // {
    //   $data['title'] = "Add Mite Data";
    //
  	// 	$this->load->view('templates/main/header.php', $data);
    //   $this->load->view('templates/main/nav.php');
    //   $this->load->view('templates/main/sidebar.php');
  	// 	$this->load->view('main/add_entry.php');
  	// 	$this->load->view('templates/main/footer.php');
    // }

    /**
    * Method that loads a generic message for work in progess
    **/
    public function under_construction($page)
    {
      $data['title'] = 'Under Construction';
      $data[$page] = 'class="active"';
      $this->load->view('templates/main/header.php', $data);
      $this->load->view('templates/main/nav.php');
      $this->load->view('templates/main/sidebar.php');
      $this->load->view('templates/under_construction.php');
      $this->load->view('templates/main/footer.php');
    }
  }
?>
