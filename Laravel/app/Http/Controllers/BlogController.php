<?php

namespace LFG\Http\Controllers;

use Illuminate\Routing\Route;
use Illuminate\Http\Request;
use LFG\Http\Requests;
use LFG\Http\Controllers\Controller;
use LFG\Blog;

class BlogController extends Controller
{
    public function __construct() {
      $this->middleware('cors');
      $this->beforeFilter('@find', ['only' => 'show', 'update', 'destroy']);
    }

    public function find(Route $route)  {
      $this->blog = Blog::find($route->getParameter('blog'));
    }

    public function index()
    {
        $blog = Blog::all();
        return response()->json($blog->toArray());
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
        Blog::create($request->all());
        return response()->json(["mensaje" => "Entrada creada"]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return response()->json($this->blog);
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
        $this->blog->fill($request->all());
        $this->blog->save();
        return response()->json(["mensaje" => "Entrada actualizada"]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->blog->delete();
        return response()->json(["mensaje" => "Entrada borrada"]);
    }
}
