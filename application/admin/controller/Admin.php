<?php
/**
 * Created by PhpStorm.
 * User: 990025
 * Date: 2018/4/25
 * Time: 18:22
 */

namespace app\admin\controller;


use app\admin\model\AuthRule;

class Admin extends Base
{
    /**
     * 管理员列表
     */
    public function lists()
    {

        $menu = AuthRule::where('type','menu')->select();
//
        var_dump($menu->toArray());die;
        $tree = $this->generateTree($menu);
        var_dump($tree);die;
        return json($menu);
        return view("list");
    }



    private function generateTree($items){
        $tree = array();
        foreach($items as $item){
            if(isset($items[$item['pid']])){
                $items[$item['pid']]['son'][] = &$items[$item['id']];
            }else{
                $tree[] = &$items[$item['id']];
            }
        }
        return $tree;
    }
}