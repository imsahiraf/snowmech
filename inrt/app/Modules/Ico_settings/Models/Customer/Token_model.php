<?php 
namespace App\Modules\Ico_settings\Models\Customer;

class Token_model
{
	public function __construct()
    {
        $this->db 		= db_connect();
        $this->session  = \Config\Services::session();
    }

	public function checkBalance($user=null)
	{
		if ($user==null) {
			$user = $this->session->get('user_id');
		}

		$query = $this->db->table('dbt_balance')
			->select('balance')
			->where('user_id', $user)
			->get()
			->getRow();

		return @$query->balance;
	}

	public function retriveUserCryptoWallet($user=null)
	{
		if ($user==null) {
			$user = $this->session->get('user_id');
		}

		$query = $this->db->table('dbt_user_cryptowallet')
			->select('wallet')
			->where('user_id', $user)
			->get()
			->getRow();

		return @$query->wallet;
	}


	public function retriveUserCryptoTransaction($user=null)
	{
		if ($user == null) {

			$user = $this->session->get('user_id');
		}

		$wallet = $this->retriveUserCryptoWallet($user);

		$query = $this->db->table('dbt_crypto_transaction')
			->select('*')
			->where('wallet', $wallet)
			->get()
			->getRow();
		return $query;
	}
	public function get_coin_info()
	{
		return $this->db->table('coin_setup')
		->select('*')
		->get()
		->getRow();
	}
}