<?php
//公共信息页面,首页的信息,点击量统计等等
class NewController extends Controller{
	public function newAction(){
		$which=isset($_GET['which'])?$_GET['which']:'';
		//获取文章数量
		$model=new ArtModel();
		$artnum=$model->count();
		//获取点击量
		$model=new NumModel();
		$num=$model->getnum();
		//获取公众信息
		$model=new HomeModel();
		$home=$model->find(1);
		if(empty($which)){
			require __VIEW__."new.html";
			exit();
	}else{
		switch ($which) {
			case 1:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['htitle1'];
					$m[1]='首页第一屏主标题';
					$v[2]=$home['hcontent1'];
					$m[2]='首页第一屏副标题';
					$v[3]=$home['hurl1'];
					$m[3]='首页第一屏了解我超链接';
					require __VIEW__."newedit.html";
					exit;
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['htitle1']=$_POST[1];
					$data['hcontent1']=$_POST[2];
					$data['hurl1']=$_POST[3];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			case 2:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['htitle2'];
					$m[1]='青蓝色第二屏标题';
					$v[2]=$home['hcontent2'];
					$m[2]='青蓝色第二屏副标题';
					require __VIEW__."newedit.html";
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['htitle2']=$_POST[1];
					$data['hcontent2']=$_POST[2];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			case 3:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['htitleleft1'];
					$m[1]='三格子左1标题';
					$v[2]=$home['hmintitleleft1'];
					$m[2]='三格子左1副标题';
					$v[3]=$home['hcontentleft1'];
					$m[3]='三格子左1内容';
					$v[4]=$home['htitleright1'];
					$m[4]='三格子右1标题';
					$v[5]=$home['hmintitleright1'];
					$m[5]='三格子右1副标题';
					$v[6]=$home['hcontentright1'];
					$m[6]='三格子右1内容';
					$v[7]=$home['htitleleft2'];
					$m[7]='三格子左2标题';
					$v[8]=$home['hmintitleleft2'];
					$m[8]='三格子左2副标题';
					$v[9]=$home['hcontentleft2'];
					$m[9]='三格子左2内容';
					require __VIEW__."newedit.html";
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['htitleleft1']=$_POST[1];
					$data['hmintitleleft1']=$_POST[2];
					$data['hcontentleft1']=$_POST[3];
					$data['htitleright1']=$_POST[4];
					$data['hmintitleright1']=$_POST[5];
					$data['hcontentright1']=$_POST[6];
					$data['htitleleft2']=$_POST[7];
					$data['hmintitleleft2']=$_POST[8];
					$data['hcontentleft2']=$_POST[9];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			case 4:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['hpurtitle'];
					$m[1]='紫色第四屏标题';
					$v[2]=$home['hpurmintitle'];
					$m[2]='紫色第四屏副标题';
					require __VIEW__."newedit.html";
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['hpurtitle']=$_POST[1];
					$data['hpurmintitle']=$_POST[2];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			case 5:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['gifttitle'];
					$m[1]='赞助主标题';
					$v[2]=$home['giftmintitle'];
					$m[2]='赞助副标题';
					$v[3]=$home['pic'];
					$m[3]='赞助二维码';
					require __VIEW__."newedit.html";
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['gifttitle']=$_POST[1];
					$data['giftmintitle']=$_POST[2];
					$data['pic']=$_POST[3];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			case 6:
				# code...
				if (empty($_POST)) {//如果为空,则进入修改页
					# code...
					$v[0]=$home['id'];
					$m[0]='';
					$v[1]=$home['title1'];
					$m[1]='分类页面1标题';
					$v[2]=$home['content1'];
					$m[2]='分类页面1副标题';
					$v[3]=$home['title2'];
					$m[3]='分类页面2标题';
					$v[4]=$home['content2'];
					$m[4]='分类页面2副标题';
					require __VIEW__."newedit.html";
				}else{//如果不为空,则更新数据
					$data['id']=$_POST[0];
					$data['title1']=$_POST[1];
					$data['content1']=$_POST[2];
					$data['title2']=$_POST[3];
					$data['content2']=$_POST[4];
					if($model->update($data)){
						$this->success('index.php?p=Admin&c=New&a=new','修改成功',2);
						exit;
					}else{
						$this->error('index.php?p=Admin&c=New&a=new','修改失败',3);
						exit;
					}
				}
				break;
			default:
				# code...
				$this->error('index.php?p=Admin&c=New&a=new','抱歉，您未选择任何信息',3);
				break;
		}
	}
	}
}