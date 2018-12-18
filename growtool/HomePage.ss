<div class="uk-inline uk-height-large uk-flex uk-flex-center uk-flex-middle uk-background-cover uk-light bannerhome" data-src="$HomeBannerImage.ScaleWidth(1000).URL" uk-img>
    <div class="uk-overlay-default uk-position-cover">
    </div>    
    <div class="uk-overlay uk-position-center uk-dark">
        <h1>The smart way to unlock skills and grow your people</h1>
        
        <div class="uk-child-width-expand@s uk-text-center" uk-grid>
            <div>
                <br/><br/>
                <img data-src="themes/growtool/images/header-text.png" alt="" uk-img class="horizontal-text horizontal-text-medium">
                <img data-src="themes/growtool/images/header-text-small.png" alt="" uk-img class="horizontal-text horizontal-text-small">
            </div>
        </div>
    </div>
</div>

<div class="about-intro">
    <div class="uk-container" >
        <div class="uk-card uk-card-default uk-card-body">
            <div>
                $Introduction
                <br/>
            </div>
        </div>        
    </div>
</div>    
<% if EmbedVideo %>
<div style='background-color: #fff;padding-bottom: 20px;'>
<div class="uk-container" >
    <div class="video-container">
        $EmbedVideo
    </div>
</div>    
</div>    
<% end_if %>

<% if ShowTargetClient %>

<% loop ShowTargetClient %>
<div class='growtool-target-client small-screen'>
    <div class="uk-container" >    
        
        <div class="uk-grid-match uk-grid-collapse uk-grid-small" uk-grid>
         
            <div class="uk-width-2-5@m">
                <div class="uk-flex-last@s uk-card-media-left uk-cover-container">
                    <img src="$PageImage.ScaleWidth(600).URL" alt="" uk-cover>
                    <canvas width="600" height="400"></canvas>
                </div>
            </div>
            <div class="uk-width-3-5@m">
                <div>
                    <div class="uk-card-body">
                        $Blurb
                        <div class="target-action">
                            
                        <a class="uk-button uk-button-default more" href="$Link">MORE</a>
                        
                        <a class="uk-button uk-button-default register" href="/register?p=plus">REGISTER</a>
                        
                        <a class="uk-button uk-button-default register" href="/register">FREE TRIAL</a>
                        </div>
                    </div>
                </div>
            </div>
            

        </div>             
        
    </div>
</div>        
<% end_loop %>

<% loop ShowTargetClient %>
<div class='growtool-target-client medium-screen'>
    <div class="uk-container" >    
        
        <div class="uk-grid-match uk-grid-collapse uk-grid-small" uk-grid>
         
            <% if $Odd %>
            
            <div class="uk-width-2-5@m">
                <div class="uk-flex-last@s uk-card-media-left uk-cover-container">
                    <img src="$PageImage.ScaleWidth(600).URL" alt="" uk-cover>
                    <canvas width="600" height="400"></canvas>
                </div>
            </div>
            <div class="uk-width-3-5@m">
                <div>
                    <div class="uk-card-body">
                        $Blurb
                        <div class="target-action">
                            
                        <a class="uk-button uk-button-default more" href="$Link">MORE</a>
                        
                        <a class="uk-button uk-button-default register" href="/register?p=plus">REGISTER</a>

                        <a class="uk-button uk-button-default register" href="/register">FREE TRIAL</a>
                        
                        </div>
                    </div>
                </div>
            </div>
            
            <% else %>
            
            
            <div class="uk-width-3-5@m">
                <div>
                    <div class="uk-card-body">
                        $Blurb
                        <div class="target-action">
                            
                        <a class="uk-button uk-button-default more" href="$Link">MORE</a>
                        
                        <a class="uk-button uk-button-default register" href="/register?p=plus">REGISTER</a>
                        <a class="uk-button uk-button-default register" href="/register">FREE TRIAL</a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="uk-width-2-5@m">
                <div class="uk-flex-last@s uk-card-media-left uk-cover-container">
                    <img src="$PageImage.ScaleWidth(600).URL" alt="" uk-cover>
                    <canvas width="600" height="400"></canvas>
                </div>
            </div>            
            
            
            <% end_if  %>
        </div>             
        
    </div>
</div>        
<% end_loop %>


<% end_if %>

<div class="Home-page-container">
    <div class="uk-container" >
        
    
        <div class="uk-grid-match uk-grid-small" uk-grid>
            <div class="uk-width-2-3@s">
                <div class="uk-card uk-card-body">
                    <div>
                    <h1>GrowTool features</h1>    
                    $Content
                    </div>
                </div>
            </div>
            <div class="uk-width-1-3@s">
                <div>
                    <div class="uk-card uk-card-default uk-card-body ">
                        <div class="uk-card uk-card-default uk-card-body whitesquareborder uk-text-center">
                            <h1>“In 2016 organisational design rocketed to the top of the agenda among senior executives.”</h1>
                        </div>

                        <div class="uk-card uk-card-default uk-card-body whitesquareborder uk-text-center">
                            <h1>“Recruiting the right skills is one of the three challenges for business owners of all sizes.”</h1>                    
                        </div>   
                    </div>
                </div>    
                
            </div>
        </div>
        
        
    </div>
</div>

<% include Calltoaction %>




