<?php

namespace LFG\Http\Controllers;

use Illuminate\Http\Request;
use LFG\Http\Requests;
use LFG\Http\Controllers\Controller;
use Illuminate\Routing\Route;
use LFG\Idea;

class IdeasController extends Controller
{
    public function __construct() {
      $this->middleware('cors');
      $this->beforeFilter('@find', ['only' => 'show', 'update', 'destroy']);
    }

    public function find(Route $route)  {
      $this->idea = Idea::find($route->getParameter('ideas'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $idea = Idea::all();
        return response()->json($idea->toArray());

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Idea::create($request->all());
        return response()->json(["mensaje" => "Idea creada"]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return response()->json($this->idea);
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
        $this->idea->fill($request->all());
        $this->idea->save();
        return response()->json(["mensaje" => "Idea actualizada"]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->idea->delete();
        return response()->json(["mensaje" => "borrada"]);
    }
}
