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

    public function index()
    {
        $idea = Idea::all();
        return response()->json($idea->toArray());

    }

    public function create()
    {

    }

    public function store(Request $request)
    {
        Idea::create($request->all());
        return response()->json(["mensaje" => "Idea creada"]);
    }

    public function show($id)
    {
        return response()->json($this->idea);
    }

    public function edit($id)
    {

    }

    public function update(Request $request, $id)
    {
        $this->idea->fill($request->all());
        $this->idea->save();
        return response()->json(["mensaje" => "Idea actualizada"]);
    }

    public function destroy($id)
    {
        $this->idea->delete();
        return response()->json(["mensaje" => "borrada"]);
    }
}
