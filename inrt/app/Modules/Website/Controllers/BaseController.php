<?php
namespace App\Modules\Website\Controllers;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 *
 * @package CodeIgniter
 */

use CodeIgniter\Controller;
use App\Libraries\Template;
use App\Modules\Website\Models\Web_model;
use App\Models\Common_model;
class BaseController extends Controller
{

	/**
	 * An array of helpers to be loaded automatically upon
	 * class instantiation. These helpers will be available
	 * to all other controllers that extend BaseController.
	 *
	 * @var array
	 */
	protected $helpers = ['form', 'url','lang'];
	protected $db;
	protected $validation;
	protected $user_model;
	protected $email;
	protected $sms_lib;
	protected $pager;
	protected $payment;
	protected $imageupload;
	protected $ga;
	protected $recaptcha;

   
	/**
	 * Constructor.
	 */
	public function initController(\CodeIgniter\HTTP\RequestInterface $request, \CodeIgniter\HTTP\ResponseInterface $response, \Psr\Log\LoggerInterface $logger)
	{
		// Do Not Edit This Line
		parent::initController($request, $response, $logger);

		//--------------------------------------------------------------------
		// Preload any models, libraries, etc, here.
		//--------------------------------------------------------------------
		// E.g.:
		
		$this->validation 		= \Config\Services::validation();
		$this->pager 			= \Config\Services::pager();
		$this->template        = new Template();
		$this->common_model   	= new Common_model(); 
		$this->web_model     	= new Web_model();
		$this->db 				= db_connect();
		$this->templte_name  = $this->db->table('themes')->select('name')->where('status',1)->get()->getRow();
		$this->session 		 	= \Config\Services::session();
	}

}
