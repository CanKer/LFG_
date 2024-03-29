<?php

namespace LFG\Http\Controllers;

use Illuminate\Http\Request;
use LFG\Http\Requests;
use LFG\Http\Controllers\Controller;
use Illuminate\Routing\Route;
use LFG\mCategory;

class mCategoryController extends Controller
{
  public function __construct() {
    $this->middleware('cors');
//    $this->beforeFilter('@find', ['only' => 'show', 'update', 'destroy']);
  }


     public function find(Route $route)  {
       $this->mCategory = Idea::find($route->getParameter('mCategory'));
     }
    public function index()
    {
      $mCategory = mCategory::all();
      return response()->json($mCategory->toArray());
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
