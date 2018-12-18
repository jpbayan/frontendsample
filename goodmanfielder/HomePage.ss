<div id="fullwidthbanner-container" class="fullwidthbanner-container">
    <div class="fullwidthbanner" style="max-height:445px;height:auto; position:relative;min-height:200px;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <div class="carousel-inner">

                <% loop $BannerSliders %>

                <div class="item <% if First %>active <% end_if %> " style="background-image: url({$Background.URL});
    background-position: center !important;
    background-repeat: no-repeat !important;
    background-size: cover !important;width:100%;">

                  
                  
                  <img src="$Background.URL" alt="header straight" style="visibility: hidden;min-height:250px;">

                  <div class="carousel-caption">
                    <h1>$Title</h1>
                    <p>$SubTitle</p>
                    
                    <% if $Btn1Text && $Btn1URL %>
                    <a href="$Btn1URL" class="carousel_btn" >$Btn1Text.XML</a>                    
                    <% end_if %>
                    
                    <% if $Btn2Text && $Btn2URL %>
                    <a href="$Btn2URL" class="carousel_btn" >$Btn2Text.XML</a>                    
                    <% end_if %>
                    
                    <% if $Btn3Text && $Btn3URL %>
                    <a href="$Btn3URL" class="carousel_btn" >$Btn3Text.XML</a>                    
                    <% end_if %>
                    
                    
                  </div>

                </div>

                <% end_loop %>

            </div>    
        </div>    
        
    </div>   
</div>    


<div class="fullwidth">	
    <div class="container">

        <div class="row clearfix homepage-content-fp">
            <div class="col-sm-6">
                <p style='text-align:left;'>    
                $Content.FirstParagraph
                </p>

            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-6 col-xs-6">
                        <div class="counter-style3">
                            <i class="fa fa-connectdevelop"></i>
                            <span class="display-percentage" data-percentage="120">120</span>
                            <p class="counter-title">Over 120 brands</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                        <div class="counter-style3">
                            <i class="fa fa-street-view"></i>
                            <span class="display-percentage" data-percentage="5000">5000</span>
                            <p class="counter-title">Over 5,000 employees</p>
                        </div>
                    </div>                
                </div>
                <div class="row">
                    <div class="col-sm-6 col-xs-6">
                        <div class="counter-style3">
                            <i class="fa fa-truck"></i>
                            <span class="display-percentage" data-percentage="30000">30000</span>
                            <p class="counter-title">Servicing over 30,000 outlets</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xs-6">
                        <div class="counter-style3">
                            <i class="fa fa-map-marker"></i>
                            <span class="display-percentage" data-percentage="40">40</span>
                            <p class="counter-title">Over 40 manufacturing sites throughout Australia, NZ and Asia-Pacific</p>
                        </div>
                    </div>                
                </div>            
            </div>    
        </div>
    </div>
</div>

<div class="fullwidth home-content-allp">
    <div class="container">
        <div class="goodman-content-logo">
                <img width="auto" height="50"  src="/resources/puhoi/logo-white.png" alt="white logo">
        </div>    
        <h2 class="home-content-custom-head">$SiteConfig.Tagline</h2>
        <div class="row clearfix home-content-custom-cont">
            <div class="col-sm-12">
                <div class="two-column">
                    $ContentHideFirstPar
                </div>    
            </div>    
        </div>            
    </div>
</div>    

<% with $Page(our-products) %>
<div class="fullwidth home-prod"> 
    <div class="container">
        <h2 class="home-prod-heading" style="">$Title </h2>
        <div class="row clearfix home-prod-cont">
            <div class="col-sm-2"></div>    
            <div class="col-sm-8">
                $Content.FirstSentence
            </div>    
            <div class="col-sm-2"></div>    
        </div>    
    <% if Children %> 

        <div class="row clearfix">
          <% loop Children %>

            <div class="col-sm-3 home-prod-cel">
                <div class="home-prod-landing-container"> 
                    <a href="$Link">
                    
                    <% if $BackgroundImage %>    
                        $BackgroundImage.Fill(281, 190)
                    <% else %>
                        $BannerImage.Fill(281, 190)
                    <% end_if %>                    
                    
                    
                    <h4 >$Title</h4>
                    </a>
                </div>    
            </div>    

        <% if MultipleOf(4) %>
            </div>        
            <div class="row ">
        <% end_if %>              
          <% end_loop %>
        </div>     

    <% end_if %>          

    </div>    
    
  
    
</div>

<% end_with %>

<% with $Page(countries) %>

<div class="fullwidth home-country"> 
    <div class="container">
        <h2 class="home-country-heading" style="">$Title </h2>
        <div class="row clearfix home-country-cont">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                $Content.NoHTML
            </div>    
            <div class="col-sm-2"></div>
        </div>    
        <br/>
        <div class="row clearfix">
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/china/" title="China" target="_self">China </a>
                <br><br>
            </div>    
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/papua-new-guinea/" title="Papua New Guinea" target="_self">Papua New Guinea </a>
                <br><br>
            </div>         
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/new-caledonia/" title="New Caledonia" target="_self">New Caledonia </a>
                <br><br>
            </div>    
            
        </div>    
        <div class="row clearfix">                
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/emerging-markets/" title="Emerging Markets" target="_self">Emerging Markets </a>
                <br><br>
            </div>                
            
            <div class="col-sm-4"></div>    
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/fiji-pacific/" title="Fiji &amp; Pacific" target="_self">Fiji &amp; Pacific </a>
                <br><br>
            </div>    
            
        </div>    
        <div class="row clearfix">                            
            
            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/australia/" title="Australia" target="_self">Australia </a>
                <br><br>
            </div>    
            
            <div class="col-sm-4"></div>                

            <div class="col-sm-4">
                <a class="home-country_btn" href="/countries/new-zealand/" title="New Zealand" target="_self">New Zealand </a>
                <br><br>
            </div>                
            
        </div>    
 
        
    </div>    
</div>

<% end_with %>

<div class="fullwidth home-career">
    <div class="container">
        
            <div class="home-career-logo">
                    <img width="36" height="55"  src="/resources/puhoi/logo-grey.png" alt="logo-grey">
            </div>    
            <h2 >WORK FOR GOODMAN FIELDER</h2>
            <div class="row clearfix home-career-content">
                    If you are interested in starting a career at Goodman Fielder, please click on the link below to visit our career page:
                    <br/><br/>
                    <a class="home-career_btn" href="https://careers.goodmanfielder.com.au/jobtools/jncustomsearch.jobsearch?in_organid=17226" title="careers" target="new">CAREERS</a>
            </div>    
        
    </div>
</div>    

<div class="fullwidth home-customers" style="background-image: url($CustomerSectionImage.URL) ; "> 
    
    <div class="container">
        <h2 class="home-customers-heading" style="">CUSTOMERS</h2>
        <div class="row clearfix home-customers-cont">
            <div class="col-sm-12">
                If you are a consumer and wish to contact us about a product you have purchased - please click on the Consumer Advisory Centre tab below:
                <br/>
                I own a store, restaurant or cafe, and are interested in supplying one of our products, purchasing ingredients, or would like to do business with us - please click on the Retail / Foodservice Customers tab.
            </div>    
        </div>    
        <br/>
        <div class="row clearfix">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <a class="home-customers_btn" href="/contact/consumer-advisory-centres/" title="Consumer Advisory Centre" target="_self">Consumer Advisory Centre</a>
            </div>            
            <div class="col-sm-5">
                <a class="home-customers_btn" href="/contact/customer-service-centre/" title="Retail / Foodservice Customers" target="_self">Retail / Foodservice Customers</a>
            </div>                        
            <div class="col-sm-1"></div>
        </div>    
  
        
    </div>        
</div>    


<div class="fullwidth home-news"> 
    <div class="container">
        <h2 >LATEST NEWS</h2>    
    <% if NewsLatest %> 
        <div class="row clearfix">
          <% loop NewsLatest %>

                <div class="col-sm-3"> 
                    <div class="home-news-landing-container"> 
                        <div class='home-news-img' style="background-image: url(<% if $PostImage %>$PostImage.Fill(269, 149).URL<% else %>/resources/puhoi/logo-large.png<% end_if %>); background-repeat: no-repeat; <% if $PostImage %> background-size: cover; <% else %> background-size: 170px 60px; <% end_if %>  background-position: center; " >
                        </div>                    
                        <div class='home-news-cont'>
                        <h4 >$Top.NewsUcase($Title)</h4>
                            <p class='item-cont'>
                                <% if Summary %> 
                                    $Summary.LimitCharacters(100) 
                                <% else %>
                                    $Content.LimitCharacters(100)

                                <% end_if %>                                    
                             </p>
                             <a class="readMore" href="{$Link}">Read more&hellip;</a>                    
                        </div>     
                    </div>
                </div>    
          
          <% end_loop %>
        </div>        
    <% end_if %>        
        <p>&nbsp;</p>
        <div class="row clearfix">
            <a class="home-news_btn" href="/latest-news/" title="latest news" target="_self">GO TO NEWS</a>
        </div>        
                
    </div>    
    
    
                     
</div>    


<div class="fullwidth home-sustain" style="background-image: url($SustainabilitySectionImage.URL) ; "> 
    
    <div class="container">
        <h2 class="home-sustain-heading" style="">Sustainability &amp; The Environment</h2>
        <div class="row clearfix home-sustain-cont">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                Our vision at Goodman Fielder is 'to be the leading and most innovative local food company'. We believe that driving environmental sustainability  will support our efforts to achieve this vision.
            </div>    
            <div class="col-sm-1"></div>
        </div>    
        <br/>
        <div class="row clearfix">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <a class="home-sustain_btn" href="/sustainability-environment/" title="Sustainability & The Environment" target="_self">Sustainability &amp; The Environment</a>
            </div>            
            <div class="col-sm-3"></div>
        </div>    
  
        
    </div>        
</div>    

<% include cta %>
