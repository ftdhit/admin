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

    public function test()
    {
//        $data =  Admin::all();
        $data = [
            "draw"=>1,
    "recordsTotal"=> 2,
    "recordsFiltered"=> 2,
    "data"=> [
        [
            "Angelica",
            "Ramos",
            "System Architect",
            "London",
            "9th Oct 09",
            "$2,875",
             "9th Oct 09",
            "$2,875",
            "$2,875",
        ],
        [
            "Ashton",
            "Cox",
            "Technical Author",
            "San Francisco",
            "12th Jan 09",
            "$4,800",
            "9th Oct 09",
            "$2,875",
            "$2,875",
        ]
    ]
        ];
        return json($data);
    }

}