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
        return view("list");
    }



}