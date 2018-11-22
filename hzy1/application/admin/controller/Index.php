<?php
namespace app\admin\controller;

use think\Controller;
use app\admin\model\User;
use app\admin\model\Lis;
use app\admin\model\One;
use app\admin\model\Class_hour;
use app\admin\model\Classes;
use app\admin\model\Course;
use think\Db;
use think\Request;

class Index extends Controller
{
	/* public function _initialize()
	{
		if (! session('userInfo.status')) {
			return $this->error('请登录', url('admin/Login/login'));
		}

		$powerPath = request()->controller() . '/' . request()->action();

		if (! in_array($powerPath, session('userInfo.power'))) {
			return $this->error('没有权限');
			exit;
		}
	} */
	// public function field()
	// {
	// 	$list=User::scope('name')->all();
	// print($list);	}
	// 后台首页 用户列表页
	public function index()
	{
		/* $data = User::select();
		$dat = Lis::select();
		$this->assign('userLis', $dat);
		$this->assign('userList', $data); */
		return $this->fetch();
	}

	// public function add()
	// {
	// 	return $this->fetch();
	// }

	/* public function doadd(Request $request)
	{
		$data = $request->param();

		$res = User::create($data);

		if ($res) {
			$this->success('添加成功', url('admin/Index/role'));
		} else {
			$this->error('添加失败');
		}
	} */
	/* public function role()
	{
		$data = User::select();

		$this->assign('userList', $data);
		return $this->fetch('admin-role');
	} */
	public function list1()
	{   
		$data = Db::query('SELECT class_name from Class_hour AS a,classes AS b where a.class_id = b.id');
		$cc = Db::query('SELECT course_name from Class_hour AS a,course AS b where a.course_name_id = b.id');
		


		$this->assign('userList', $data,$cc);
		return $this->fetch('role');
	}
	public function list2()
	{
		/* $data = One::select();

		$this->assign('userList', $data); */
		return $this->fetch('time');
	}
	/* public function add()
	{
		$data = User::select();
		$this->assign('userList', $data);
		return $this->fetch('admin-role-add');
	} */

	public function memberadd(){
		return $this->fetch();
	}
	public function paper(){
		return $this->fetch();
	}
	public function section(){
		return $this->fetch();
	}
	public function thesis(){
		return $this->fetch();
	}
	public function train(){
		return $this->fetch();
	}
	public function award(){
		return $this->fetch();
	}

	/* public function edit(Request $request)
	{
		$id = $request->param('id');

		$data = User::get($id);

		$this->assign('userInfo', $data);

		return $this->fetch();
	} */
	/* public function doedit(Request $request)
	{
		$id = $request->only(['id']);

		$model = User::get($id);

		$model->name = $request->param('name');
		$model->password = $request->param('password');

		$res = $model->save();

		if ($res) {
			$this->success('修改成功', url('admin/Index/role'));
		} else {
			$this->error('修改失败');
		}
	} */
	/* public function del(Request $request)
	{

		$id = $request->param('id');

		$res = User::destroy($id);

		if ($res) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	} */

}