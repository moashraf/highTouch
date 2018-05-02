@extends('main.master')
@section('content')
  <?php    
  

      function mail_code($name,$email,$tel ,$message){

      $body= "
<!doctype html>
<html>
  <head>
    <meta name='viewport' content='width=device-width' />
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <title>Simple Transactional Email</title>
    <style>
      /* -------------------------------------
          GLOBAL RESETS
      ------------------------------------- */
      img {
        border: none;
        -ms-interpolation-mode: bicubic;
        max-width: 100%; }
      body {
        background-color: #f6f6f6;
        font-family: sans-serif;
        -webkit-font-smoothing: antialiased;
        font-size: 14px;
        line-height: 1.4;
        margin: 0;
        padding: 0;
        -ms-text-size-adjust: 100%;
        -webkit-text-size-adjust: 100%; }
      table {
        border-collapse: separate;
        mso-table-lspace: 0pt;
        mso-table-rspace: 0pt;
        width: 100%; }
        table td {
          font-family: sans-serif;
          font-size: 14px;
          vertical-align: top; }
      /* -------------------------------------
          BODY & CONTAINER
      ------------------------------------- */
      .body {
        background-color: #f6f6f6;
        width: 100%; }
      /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */
      .container {
        display: block;
        Margin: 0 auto !important;
        /* makes it centered */
        max-width: 580px;
        padding: 10px;
        width: 580px; }
      /* This should also be a block element, so that it will fill 100% of the .container */
      .content {
        box-sizing: border-box;
        display: block;
        Margin: 0 auto;
        max-width: 580px;
        padding: 10px; }
      /* -------------------------------------
          HEADER, FOOTER, MAIN
      ------------------------------------- */
      .main {
        background: #ffffff;
        border-radius: 3px;
        width: 100%; }
      .wrapper {
        box-sizing: border-box;
        padding: 20px; }
      .content-block {
        padding-bottom: 10px;
        padding-top: 10px;
      }
      .footer {
        clear: both;
        Margin-top: 10px;
        text-align: center;
        width: 100%; }
        .footer td,
        .footer p,
        .footer span,
        .footer a {
          color: #999999;
          font-size: 12px;
          text-align: center; }
      /* -------------------------------------
          TYPOGRAPHY
      ------------------------------------- */
      h1,
      h2,
      h3,
      h4 {
        color: #000000;
        font-family: sans-serif;
        font-weight: 400;
        line-height: 1.4;
        margin: 0;
        Margin-bottom: 30px; }
      h1 {
        font-size: 35px;
        font-weight: 300;
        text-align: center;
        text-transform: capitalize; }
      p,
      ul,
      ol {
        font-family: sans-serif;
        font-size: 14px;
        font-weight: normal;
        margin: 0;
        Margin-bottom: 15px; }
        p li,
        ul li,
        ol li {
          list-style-position: inside;
          margin-left: 5px; }
      a {
        color: #3498db;
        text-decoration: underline; }
      /* -------------------------------------
          BUTTONS
      ------------------------------------- */
      .btn {
        box-sizing: border-box;
        width: 100%; }
        .btn > tbody > tr > td {
          padding-bottom: 15px; }
        .btn table {
          width: auto; }
        .btn table td {
          background-color: #ffffff;
          border-radius: 5px;
          text-align: center; }
        .btn a {
          background-color: #ffffff;
          border: solid 1px #3498db;
          border-radius: 5px;
          box-sizing: border-box;
          color: #3498db;
          cursor: pointer;
          display: inline-block;
          font-size: 14px;
          font-weight: bold;
          margin: 0;
          padding: 12px 25px;
          text-decoration: none;
          text-transform: capitalize; }
      .btn-primary table td {
        background-color: #3498db; }
      .btn-primary a {
        background-color: #3498db;
        border-color: #3498db;
        color: #ffffff; }
      /* -------------------------------------
          OTHER STYLES THAT MIGHT BE USEFUL
      ------------------------------------- */
      .last {
        margin-bottom: 0; }
      .first {
        margin-top: 0; }
      .align-center {
        text-align: center; }
      .align-right {
        text-align: right; }
      .align-left {
        text-align: left; }
      .clear {
        clear: both; }
      .mt0 {
        margin-top: 0; }
      .mb0 {
        margin-bottom: 0; }
      .preheader {
        color: transparent;
        display: none;
        height: 0;
        max-height: 0;
        max-width: 0;
        opacity: 0;
        overflow: hidden;
        mso-hide: all;
        visibility: hidden;
        width: 0; }
      .powered-by a {
        text-decoration: none; }
      hr {
        border: 0;
        border-bottom: 1px solid #f6f6f6;
        Margin: 20px 0; }
      /* -------------------------------------
          RESPONSIVE AND MOBILE FRIENDLY STYLES
      ------------------------------------- */
      @media only screen and (max-width: 620px) {
        table[class=body] h1 {
          font-size: 28px !important;
          margin-bottom: 10px !important; }
        table[class=body] p,
        table[class=body] ul,
        table[class=body] ol,
        table[class=body] td,
        table[class=body] span,
        table[class=body] a {
          font-size: 16px !important; }
        table[class=body] .wrapper,
        table[class=body] .article {
          padding: 10px !important; }
        table[class=body] .content {
          padding: 0 !important; }
        table[class=body] .container {
          padding: 0 !important;
          width: 100% !important; }
        table[class=body] .main {
          border-left-width: 0 !important;
          border-radius: 0 !important;
          border-right-width: 0 !important; }
        table[class=body] .btn table {
          width: 100% !important; }
        table[class=body] .btn a {
          width: 100% !important; }
        table[class=body] .img-responsive {
          height: auto !important;
          max-width: 100% !important;
          width: auto !important; }}
      /* -------------------------------------
          PRESERVE THESE STYLES IN THE HEAD
      ------------------------------------- */
      @media all {
        .ExternalClass {
          width: 100%; }
        .ExternalClass,
        .ExternalClass p,
        .ExternalClass span,
        .ExternalClass font,
        .ExternalClass td,
        .ExternalClass div {
          line-height: 100%; }
        .apple-link a {
          color: inherit !important;
          font-family: inherit !important;
          font-size: inherit !important;
          font-weight: inherit !important;
          line-height: inherit !important;
          text-decoration: none !important; }
        .btn-primary table td:hover {
          background-color: #34495e !important; }
        .btn-primary a:hover {
          background-color: #34495e !important;
          border-color: #34495e !important; } }
    </style>
  </head>
  <body class=''>
    <table border='0' cellpadding='0' cellspacing='0' class='body'>
      <tr>
        <td>&nbsp;</td>
        <td class='container'>
          <div class='content'>

            <!-- START CENTERED WHITE CONTAINER -->
            <span class='preheader'>This is preheader text. Some clients will show this text as a preview.</span>
            <table class='main'>

              <!-- START MAIN CONTENT AREA -->
              <tr>
                <td class='wrapper'>
                  <table border='0' cellpadding='0' cellspacing='0'>
                    <tr>
                      <td>
                        <p>Hi there,</p>
                         <table border='0' cellpadding='0' cellspacing='0' class='btn btn-primary'>
                         <div class= 'table-responsive'>          
                         <table class= 'table'>
                           <thead>
                             <tr>
                                <th>name</th>
                               <th>tel</th>
                               <th>tel</th>
                               <th>message</th>
                              </tr>
                           </thead>
                           <tbody>
                             <tr>
                                <td>$name</td>
                               <td>$tel</td>
                               <td>$tel</td>
                               <td>$message  </td>
                              </tr>
                           </tbody>
                         </table>
                         </div> 
                        </table>
                         <p>Good luck! Hope it works.</p>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>

            <!-- END MAIN CONTENT AREA -->
            </table>

            <!-- START FOOTER -->
            <div class='footer'>
              <table border='0' cellpadding='0' cellspacing='0'>
                
              </table>
            </div>
            <!-- END FOOTER -->

          <!-- END CENTERED WHITE CONTAINER -->
          </div>
        </td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </body>
</html>";
return  $body ;

    } 
    function site_settings($key)
 {

 if (App::isLocale('ar')) { 
  $siteStings =   App\Models\settingsAR::where('key', $key) ->first();
   }else
   {

      $siteStings =   App\Models\stings::where('key', $key) ->first();

   }

 	 


   if(!is_null($siteStings)){ 
 	 $siteStings_object=(object)  $siteStings ;
 	 return   $siteStings_object->value ;}
   else{return "done";} 
 }
   ?>

        <!--********** Start home slider **********-->
        <section id="home" class="home_slider">
            <div id="myCarousel" class="carousel slide" data-ride="carousel" dir="ltr">
                <!-- Wrapper for slides -->
                <div class="carousel-inner" dir="ltr">

                   
                    



 @foreach($sliders as $sliders_val)  


<style>
  .home_slider #myCarousel .item:nth-of-type(<?php  if($loop->iteration){echo "$loop->iteration";}    ?>)  {
    background: url( "{{ URL::to('/').'/data/'.$sliders_val->photo}}" ) no-repeat fixed;
    background-size: cover;
}

 </style>
 


          <div class="item    <?php  if($loop->iteration == 1){echo 'active';}    ?> ">
                        <div class="overlay_slider">
                            <div class="carousel-caption">
                                <h3 class="wow fadeInLeftBig" data-wow-duration="2s">  {{$sliders_val->title}}    </h3>
                                <p class="wow fadeInRightBig" data-wow-duration="2s">
                                    {{$sliders_val->body}}   
                                </p>
                            </div>
                        </div>
                    </div>

 @endforeach
                </div>
                <!-- End Carousel Inner -->
                <ul class="nav nav-pills nav-justified">

 @foreach($sliders as  $key => $sliders_val )  

                    <li data-target="#myCarousel" data-slide-to="<?php  if($loop->iteration){echo "$key";}    ?>" 
                      class=" <?php  if($loop->iteration ==1 ){echo "active";}    ?> ">
                        <a href="#">
                            <img src="{{ URL::to('/').'/data/'.$sliders_val->photo}}" alt="smallslide1">
                        </a>
                    </li>

                  

 @endforeach


                </ul>
            </div>
            <!-- End Carousel -->
        </section>
        <!--********** End home slider **********-->
        
        <!--********** Start about **********-->
        <section class="about">
            <div class="container"><!--Start Container-->
                <div class="row"><!--Start row-->
                    
                    <div class="col-xs-12 text-center">
                        <h2> {{ trans('DataLang.About') }}  </h2>
                        <p data-text="  {{  site_settings("About Us")  }}  "> 
                             {{  site_settings("About Us")  }} 

                        </p>
                        <img src="{{ asset('imgs/pencil.png') }}" alt="pencil">
                    </div>
                    
                </div><!--End row-->
            </div><!--End Container-->
        </section>
        <!--********** End about **********-->
        
        <!--********** Start certs **********-->
        <section class="certs">
            <h3 class="text-center"> {{ trans('DataLang.Certificates') }}  </h3>
        
            <div id="carousel3d">

                <div class="photo-thumbs">
                    <carousel-3d :perspective="0" :space="200" :display="5" :controls-visible="true" :controls-prev-html="'❬'" :controls-next-html="'❭'" :controls-width="30" :controls-height="60" :clickable="true" :autoplay="true" :autoplay-timeout="5000">

                     @foreach($Certificates as  $key => $Certificates_val )  


                        <slide :index="<?php  if($loop->iteration){echo "$key";}    ?>">
                            <img src="{{ URL::to('/').'/data/'.$Certificates_val->photo  }}" alt="" width="100%" height="100%">
                        </slide>


                        @endforeach


                    </carousel-3d>
                </div>    

            </div>
        </section>
        <!--********** End certs **********-->

        <!--********** Start services **********-->
        <section id="services" class="services">
            <div class="container"><!--Start Container-->
                <div class="heading text-center">
                    <h2> {{ trans('DataLang.services') }}  </h2>
                    
                </div>
                <div class="row"><!--Start row-->





                    @foreach($Services as  $key => $Services_val )  




                    <div class="single_service">
                        <div class="row">
                            <div class="col-md-6 col-xs-12" style="<?php  if($loop->iteration  % 2 == 0){echo "float: right!important;";}    ?>" 
 >
                                <div class="describe_service">
                                    <h2> {{  $Services_val->title  }}   </h2>
                                    <p> {{  $Services_val->body  }}
                                </p>
                                 <a href="{{  $Services_val->link  }}" target="_blank">  {{ trans('DataLang.show') }}   
                                            <i class="fa fa-chevron-right"></i>
                                        </a>
                                </div>
                            </div>

                            <div class="col-md-6 col-xs-12">
                    <img class="img-responsive center-block" src="{{ URL::to('/').'/data/'.$Services_val->photo  }}" alt="one">
                            </div>
                        </div>
                    </div>

                     
 

                        @endforeach
                     

                </div><!--End row-->
            </div><!--End Container-->
        </section>
        <!--********** End services **********-->

        <!--========== Start work_slider ==========-->
        <section id="gallery" class="work_slider">
            <div class="container"><!--Start Container-->
                <div class="work_slider_head text-center">
                    <h2>  {{ trans('DataLang.OurGallery') }}   </h2>
                  </div>
            </div><!--End Container-->
            <div class="container-fluid">

                <div class="wrapper_slider">
                    <div class="controls">
                    @foreach($GalleryCategory as  $key => $GalleryCategory_val )  
 
                        <button class="filter" data-filter=".{{ str_replace(" ","_",$GalleryCategory_val->title ) }}">{{$GalleryCategory_val->title}}</button> 
                        @endforeach

                    </div>

                    <div id="Container" class="container">
                        <div class="photo-thumbs"><!--Start wrap of gallery-->


                    @foreach($galleryAlbum as  $key => $galleryAlbum_val )  


                            <div class="cover-slide mix  {{     str_replace(" ","_", $galleryAlbum_val->get_projects_cat['title'] ) }}  cover-slide" 
                              data-my order="<?php  if($loop->iteration  ){echo "$key";}    ?>">
                                    <img src="{{ URL::to('/').'/data/'.$galleryAlbum_val->photo  }}" alt="slide1" 
                                    data-caption=" <?php  echo   $galleryAlbum_val->body ?>">
                                    <div class="info text-center">
                                        <h3> <?php  echo   $galleryAlbum_val->title ?>  </h3>
                                        <p>  <?php  echo  $galleryAlbum_val->get_projects_cat['title'] ?>  </p>
                                    </div>
                                </div>
                                
                        @endforeach
                                                                                         
                        </div>

                    </div>

                    <div class="gap"></div>
                    <div class="gap"></div>
                </div>

            </div>

        </section>
        <!--========== Ebd work_slider ==========-->


@endsection