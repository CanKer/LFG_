<?php

namespace LFG\Http\Controllers;

use Illuminate\Http\Request;
use LFG\Http\Requests;
use LFG\Http\Controllers\Controller;
use Illuminate\Routing\Route;
use LFG\User;

class UsuariosController extends Controller
{
    public function __construct() {
      $this->middleware('cors');
      $this->beforeFilter('@find', ['only' => ['show','update','destroy']]);
    }

    public function find(Route $route)  {
      $this->user = User::find($route->getParameter('users'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all();
        return response()->json($user->toArray());
    }
    public function create()
    {
  //      return view('account.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        Users::create($request->all());
        return response()->json(["mensaje" => "Usuario creado correctamente"]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        return response()->json($this->user);
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
        $this->user->fill($request->all());
        $this->user->save();
        return response()->json(["mensaje" => "actualizado"]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->user->delete();
        return response()->json(["mensaje" => "borrado"]);
    }
}
