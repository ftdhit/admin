<?php
/**
 * Created by PhpStorm.
 * User: 990025
 * Date: 2018/4/25
 * Time: 18:07
 */

namespace app\admin\model;


class Admin extends Base
{

    /**
     * 获取管理员列表
     */
    public static function getAdmins($draw,$search,$length,$offset,$order,$order_by)
    {
        $res = [];
        if (!empty($search))
        $data = self::where('status','normal')->whereLike('username',"%$search%");
        if (!empty($length))
        $data = $data->limit($offset,$length);
        if (!empty($order))
        $data = $data->order($order,$order_by);

        $data = $data->select();
        $res['data'] =  $data;
        $res['draw'] = $draw;
        $res['recordsTotal'] = count($data);
        $res['recordsFiltered'] = $res['recordsTotal'];
        return $res;
    }
}