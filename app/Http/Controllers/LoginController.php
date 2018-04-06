<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Redirect;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('login');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        session()->forget('activeUser');
        session()->flush();
        //echo "hello world";
        //echo "hello world";
        //print_r(session()->get('activeUser'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $client = new \GuzzleHttp\Client();

        $requestt = $client->request('POST', 'http://api2.dev.ent.pens.ac.id/public/login', [
          'form_params' => [
            'USER_NAME' => $request->input('USER_NAME'),
            'USER_PASSWORD' => $request->input('USER_PASSWORD'),
          ]
        ]);

        $response = $requestt->getBody()->getContents();
        $data = json_decode($response);

        $request->session()->put('activeUser',$data);
        $request->session()->save();

        //print_r($request->session()->get('activeUser',$data));

        if(session()->get('activeUser') != "") {
            Redirect::to('akun')->send()->with(session()->get('activeUser'));
        } else {
            echo "gagal login";
        }
        //print_r(session()->get('activeUser')->USER_ID);

        /*if(session()->get('activeUser')->USER_ID != "") {

        } else {
          echo "gagal";
        }*/



        //print_r($request->session()->get('activeUser'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
