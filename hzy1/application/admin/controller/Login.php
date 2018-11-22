<?php
/*namespace app\admin\controller;

use think\Controller;
use think\Request;
use app\admin\model\User;
use think\Db;

class Login extends Controller
{
	public function login()
	{
		$data = User::select();
	
	 $this->assign('userList', $data);
		return $this->fetch();
	}

	public function dologin(Request $request)
	{
		$data = $request->param();
           
		$res = User::get($data);
		
	

		if ($res) {
			$power = Db::query("SELECT n.c_name, n.a_name FROM user_node AS un, node AS n WHERE un.uid={$res->id} GROUP BY a_name");

			foreach ($power as $key => $value) {
				$power[$key] = implode('/', $value);
			}
			
		session('userInfo.power', $power);
		session('userInfo.id', $res->id);
		session('userInfo.name', $res->name);
		session('userInfo.status', true);
		cookie('id', $res['id'], 3600);  // 一个小时有效期
    	cookie('name', $res['name'], 3600);
			$this->success("登录成功！", url('admin/Index/index'));
		} else {
			$this->error("账号或者密码错误！");
		}
	}

	public function logout()
	{
		session('userInfo.power', null);
		session('userInfo.id', null);
		session('userInfo.name', null);
		session('userInfo.status', null);
		$this->error('退出成功！', url('admin/Login/login'));
	}
}*/