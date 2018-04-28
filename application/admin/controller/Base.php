<?php
/**
 * Created by PhpStorm.
 * User: 990025
 * Date: 2018/4/25
 * Time: 14:45
 */

namespace app\admin\controller;
use app\admin\model\AuthRule;
use think\Controller;

class Base extends  Controller
{
    public $menu;
    public function _initialize()
    {
        $this->menu = $this->left();
    }


    public function headder()
    {

    }

    //查询 并渲染目录
    public function left()
    {
        $menu = AuthRule::where('type','menu')->select();
        $tree = $this->generateTree(collection($menu)->toArray());
       $this->assign('data',$tree);
    }

    private function generateTree($items){
        $tree = array();
        //先找到父节点
        foreach($items as  $item){
            if ($item['pid'] == 0){
                $tree[$item['id']] = $item;
            }
        }
        //再添加子节点
        foreach ($items as $item){
            if ($item['pid'] >0 && isset($tree[$item['pid']])){
                $tree[$item['pid']]['son'][] = $item;
            }
        }
        return $tree;
    }
}