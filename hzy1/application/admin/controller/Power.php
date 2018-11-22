<?php
/*namespace app\admin\controller;

use think\Controller;
use app\admin\model\Node;
use app\admin\model\User;
use app\admin\model\UserNode;
use think\Db;
use think\Request;

class Power extends Controller
{
	public function index()
	{
		$data = Node::select();

		$this->assign('nodeList', $data);
		return $this->fetch('admin-role');
	}

	public function permission()
	{
		$data = User::select();

		$this->assign('userList', $data);
		return $this->fetch();
	}

	public function permission1()
	{
		$data = Node::select();
		$this->assign('nodeList', $data);

		$power = Db::query("SELECT DISTINCT n.id, n.c_name, n.a_name FROM user_node AS un, node AS n WHERE un.uid={$_GET['uid']} AND n.id = un.nid GROUP BY a_name");

		$new_power = [];
		foreach ($power as $key => $value) {
			$new_power[$value['id']] = implode('/', [$value['c_name'], $value['a_name']]);
		}

		$this->assign('userPower', $new_power);
		return $this->fetch();
	}


	public function node_add(Request $request)
	{
		$data = $request->param();

		$mark = true;

		foreach ($data['node'] as $value) {
			$mark = UserNode::create([
				'uid' => $data['uid'],
				'nid' => $value
			]);
			if (! $mark) {
				return $this->error("添加失败");
			}
		}

		$this->success('添加成功', url('admin/Index/index'));

	}

	public function node_del(Request $request)
	{
		$data = $request->param();

		$mark = true;

		foreach ($data['node'] as $value) {
			$mark = UserNode::where('nid', $value)->delete();
			if (! $mark) {
				return $this->error("删除失败");
			}
		}

		$this->success('删除成功');
	}
}*/