<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Redirect;
use Session;

class AkunController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function __construct() {
        //echo "tes";
        //print_r(session()->get('activeUser'));

        /*if(session()->get('activeUser')  != "") {
            echo "ada data";
        } else {
          //Redirect::to('masuk')->send();
            echo "data tidak ada";
          }*/
      /*if(session()->has('activeUser') == "") {
          Redirect::to('masuk')->send();
      } else {
          echo "ada";
          print_r(session()->get('activeUser'));
      }*/
    }

    public function index()
    {
        //
        $client = new \GuzzleHttp\Client();
        $request = $client->get('http://api2.dev.ent.pens.ac.id/public/user');
        $response = $request->getBody()->getContents();
        $data = json_decode($response);

        return view('akun',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('akuncreate');
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
        //
        $client = new \GuzzleHttp\Client();
        $request = $client->get('http://api2.dev.ent.pens.ac.id/public/user/' . $id);
        $response = $request->getBody()->getContents();
        $data = json_decode($response);

        //print_r($data);
        return view('akunedit',compact('data'));
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
