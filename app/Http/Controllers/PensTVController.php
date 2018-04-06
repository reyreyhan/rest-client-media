<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PensTVController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $client = new \GuzzleHttp\Client();
      $request = $client->get('http://api2.dev.ent.pens.ac.id/public/penstv');
      $response = $request->getBody()->getContents();
      $data = json_decode($response);

      return view('penstv',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $client = new \GuzzleHttp\Client();
        $request = $client->get('http://api2.dev.ent.pens.ac.id/public/kategori');
        $response = $request->getBody()->getContents();
        $data = json_decode($response);

        return view('penstvcreate',compact('data'));
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

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $client = new \GuzzleHttp\Client();
        $request = $client->get('http://api2.dev.ent.pens.ac.id/public/penstv/' . $id);
        $response = $request->getBody()->getContents();
        $data = json_decode($response);

        //print_r($data);
        return view('penstvedit',compact('data'));
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
