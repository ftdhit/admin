<?php
/**
 * Created by PhpStorm.
 * User: 990025
 * Date: 2018/4/25
 * Time: 14:44
 */

namespace app\admin\controller;
use app\admin\model\Admin;
use think\captcha\Captcha;
use think\Request;

class Index extends Base
{
    /**
     * @return \think\response\View
     * 首页
     */
    public function index()
    {

        return view('index');
    }



    public function login()
    {
        return view('login');
    }


    public function check(Request $request)
    {
        $captcha = new Captcha();
        $code = $request->post('code');
       if($captcha->check($code)){
           return redirect('/admin/index/index');
       }
      $this->error('验证码错误');
    }

    public function logout()
    {
        return view('login');
    }

    public function test(Request $request)
    {
//        $data =  Admin::all();
//        return json($data);
        $draw = $request->param('draw',1);
        //排序列
        $order_column = $request->param('order.0.column',0);
        //排序字段
        $order = $request->param('columns.'.$order_column.'.data','');
        //排序方式
        $order_by = $request->param('order.0.dir','desc');
        $start = $request->param('start',0);
        $length = $request->param('length',10);
        $search = $request->param('search.value','');
        $data = [
            "draw"=>$request->param('draw',1),
            "recordsTotal"=> 200,
            "recordsFiltered"=> 200,
    "data"=> [
        [
            "name1"=> 1,
            "name2"=> "聂",
            "name3"=> "System Architect",
            "name4"=> "London",
            "name5"=>"9th Oct 09",
            "name6"=>"$2,875",
            "name7"=>"9th Oct 09",
            "name8"=> $start,
            "name9"=>$order,
        ],
        [
            "name1"=>2,
            "name2"=>$search,
            "name3"=>"Technical Author",
            "name4"=>"San Francisco",
            "name5"=>"12th Jan 09",
            "name6"=>"$4,800",
            "name7"=> "9th Oct 09",
            "name8"=>$length,
            "name9"=>$order_by,
        ]
    ]
        ];
        return json($data);
    }

}