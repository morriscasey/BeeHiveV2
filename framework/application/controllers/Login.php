<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		
		// Load form helper library
		$this->load->helper('form');

		// Load form validation library
		$this->load->library('form_validation');
		
		// Load database
		$this->load->model('login_model');
	}
	
	// Main page for logging in
	public function index()
	{
		$data['title'] = "Login for Bee Hive";
		$this->load->view('templates/header.php', $data);
		$this->load->view('login_form');
		$this->load->view('templates/footer.php');
	}
	
	/**
	 *  Used to check validation on form, then either finds user or adds user to login.
	 */
	public function validate_credentials()
	{
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
		if($this->form_validation->run() === false)
		{
			$this->index();
		}
		else
		{
		//** Todo: Break this into a private method **
			// If comes back validated then true else false
			if($query = $this->login_model->validate())
			{
				// Todo: Build a way to track sessions in database also switch from creating $data to using
				// Login_model object
				$data = array(
					'email' => $this->input->post('email')
					
				);
				
				$data['title'] = "Construction Page";
				$this->load->view('templates/header.php', $data);
				$this->load->view('templates/under_construction');
				$this->load->view('templates/footer.php');
				// Need to research if redirect is worse than $this->load->view('')
				//redirect('main/beehive');
				
			}else{
				// Calls method in Login_model to add new user
				if($query = $this->login_model->add_user())
				{
					// Todo: Need to research how to load new controller. 
					$data['title'] = "Under Construction";
					$this->load->view('templates/header.php', $data);
					$this->load->view('templates/under_construction');
					$this->load->view('templates/footer.php');
				}
			}
		//**  End of possible new method **
			
		}
		
		
		
	}
}
