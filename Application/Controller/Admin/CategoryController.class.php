<?php 
//管理页面后台栏目
class CategoryController extends Controller{
	//后台栏目分类列表页
	public function catlistAction(){
		$model=new CategoryModel();
		$list=$model->getCategoryTree();
		require __VIEW__.'category_list.html';
	}
	//后台栏目分类添加页
	public function cataddAction(){
		$model=new CategoryModel();
		if (!empty($_POST)) {
			# code...
			$data['name']=$_POST['cat_name'];
			$data['parentid']=$_POST['parent_id'];
			$data['sort_order']=$_POST['sort_order'];
			if ($model->insert($data)) {
				# code...
				$this->success('index.php?p=Admin&c=Category&a=catlist','添加成功',1);
			}else{
				$this->error('index.php?p=Admin&c=Category&a=catadd','添加失败',3);
				exit;
			}
		}
		$list=$model->getCategoryTree();
		require __VIEW__.'category_add.html';
	}
	//后台栏目分类修改页
	public function cateditAction(){
		$id=$_GET['id'];
		$model=new CategoryModel();
		if (!empty($_POST)) {
			# code...
			$data['id']=$id;
			$data['name']=$_POST['cat_name'];
			$data['parentid']=$_POST['parent_id'];
			$data['sort_order']=$_POST['sort_order'];
			//自己不能使自己的子集
			if ($id==$data['parentid']) {
				# code...
				$this->error('index.php?p=Admin&c=Category&a=catlist','修改失败,自己不能是自己的子集',3);
				exit;
			}
			//制定父级不能使自己的后代
			$sublist=$model->getCategoryTree($id);
			foreach ($sublist as $rows) {
				# code...
				if ($rows['id']==$data['parentid']) {
					# code...
				$this->error('index.php?p=Admin&c=Category&a=catlist', '修改失败,指定的父级是自己的后代',3);
                exit;
				}
			}
			if ($model->update($data)) {
				# code...
				$this->success('index.php?p=Admin&c=Category&a=catlist','修改成功',1);
			}else{
				$this->error('index.php?p=Admin&c=Category&a=catadd','修改失败',3);
				exit;
			}
		}
		$info=$model->find($id);
		$list=$model->getCategoryTree();
		require __VIEW__.'category_edit.html';
	}
	//后台栏目分类删除
	public function catdelAction(){
		$id=(int)$_GET['id'];
		$model=new CategoryModel();
		if ($model->isLeaf($id)) {
			# code...
			if($model->del($id)){
				$this->success('index.php?p=Admin&c=Category&a=catlist','删除成功',1);
				exit;
			}else{
				$this->error('index.php?p=Admin&c=Category&a=catlist','删除失败',2);
				exit;
			}
		}else{
		$this->error('index.php?p=Admin&c=Category&a=catlist','该栏目下不能有节点',3);
		exit;
		}
		//$cat_id=$_POST['cat_id'];
	}
 }
?>