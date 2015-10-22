@extends('layouts.Principal')
@section('contenido')

            <!-- Head Section -->
            <section class="small-section bg-dark-lighter">
                <div class="relative container align-left">

                    <div class="row">

                        <div class="col-md-8">
                            <h1 class="hs-line-11 font-alt mb-20 mb-xs-0">Mi cuenta</h1>
                            <div class="hs-line-4 font-alt">
                                Blablablabla
                            </div>
                        </div>

                        <div class="col-md-4 mt-30">
                            <div class="mod-breadcrumbs font-alt align-right">
                                <a href="#">Inicio</a>&nbsp;/&nbsp;<a href="#">Servicios</a>&nbsp;/&nbsp;<span>Ingreso</span>
                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <!-- End Head Section -->


            <!-- Section -->
            <section class="page-section">
                <div class="container relative">

                    <!-- Nav Tabs -->
                    <div class="align-center mb-40 mb-xxs-30">
                        <ul class="nav nav-tabs tpl-minimal-tabs">

                            <li class="active">
                                <a href="#mini-one" data-toggle="tab">LogIn</a>
                            </li>

                            <li>
                                <a href="#mini-two" data-toggle="tab">Registro</a>
                            </li>

                        </ul>
                    </div>
                    <!-- End Nav Tabs -->

                    <!-- Tab panes -->
                    <div class="tab-content tpl-minimal-tabs-cont section-text">

                        <div class="tab-pane fade in active" id="mini-one">

                            <!-- Login Form -->
                            <div class="row">
                                <div class="col-md-4 col-md-offset-4">
                                    <form class="form contact-form" id="contact_form">
                                        <div class="clearfix">

                                            <!-- Username -->
                                            <div class="form-group">
                                                <input type="text" name="username" id="username" class="input-md round form-control" placeholder="Usuario" pattern=".{3,100}" required>
                                            </div>

                                            <!-- Password -->
                                            <div class="form-group">
                                                <input type="password" name="password" id="password" class="input-md round form-control" placeholder="Contraseña" pattern=".{5,100}" required>
                                            </div>

                                        </div>

                                        <div class="clearfix">

                                            <div class="cf-left-col">

                                                <!-- Inform Tip -->
                                                <div class="form-tip pt-20">
                                                    <a href="">¿Olvidaste Contraseña?</a>
                                                </div>

                                            </div>

                                            <div class="cf-right-col">

                                                <!-- Send Button -->
                                                <div class="align-right pt-10">
                                                    <button class="submit_btn btn btn-mod btn-medium btn-round" id="login-btn">Login</button>
                                                </div>

                                            </div>

                                        </div>

                                    </form>

                                </div>
                            </div>
                            <!-- End Login Form -->

                        </div>

                        <div class="tab-pane fade" id="mini-two">

                            <!-- Registry Form -->
                            <div class="row">
                                <div class="col-md-4 col-md-offset-4">


                                  {!!Form::open(['route'=>'account.store', 'method'=>'POST', 'class'=>'form contact-form', 'id'=>'contact-form'])!!}
                                  <div class="clearfix">
                                    <div class="form-group">
                                      {!!Form::text('email', null,['class' =>'input-md round form-control', 'placeholder' =>'Ingresa tu Correo', 'pattern' =>'.{3,100}'])!!}
                                    </div>
                                    <div class="form-group">
                                      {!!Form::text('user', null,['class' =>'input-md round form-control', 'placeholder' =>'Ingresa tu Usuario', 'pattern' =>'.{3,100}'])!!}
                                    </div>
                                    <div class="form-group">
                                      {!!Form::password('password',['class' =>'input-md round form-control', 'placeholder' =>'Ingresa tu Contraseña', 'pattern' =>'.{3,100}'])!!}
                                    </div>
                                    <div class="form-group">
                                      {!!Form::password('rePassword',['class' =>'input-md round form-control', 'placeholder' =>'Reingresa tu Contraseña', 'pattern' =>'.{3,100}'])!!}
                                    </div>
                                    {!!Form::submit('Registrar', ['class' => 'submit_btn btn btn-mod btn-medium btn-round btn-full'])!!}
                                  </div>
                                  {!!Form::close()!!}

                                </div>
                            </div>
                            <!-- End Registry Form -->

                        </div>

                    </div>

                </div>
            </section>
            <!-- End Section -->
@stop
