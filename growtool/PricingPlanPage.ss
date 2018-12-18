<div class="about-intro">
    <div class="uk-container" >
        <div class="uk-card uk-card-default uk-card-body">
            <div>
                $PlanHeader
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

<% loop Plans %>
<div class='plan-content'>
    <div class="uk-container" >        
        <div class="uk-grid-match uk-grid-collapse uk-grid-small" uk-grid>
            <div class="uk-width-1-2@m team-desc">
                <div>
                    <div class="uk-card-body">
                        <h2>$Title</h2>
                        $Description
                        
                        <div class='uk-margin-medium'>
                            <% if RegistrationLink = 'Trial' %>
                            <a class="uk-button uk-button-default uk-button-small" href="/register">REGISTER AND START TODAY</a>
                            <% end_if %>
                            <% if RegistrationLink = 'Plan' %>
                            <a class="uk-button uk-button-default uk-button-small" href="/register?p=plus">REGISTER AND START TODAY</a>
                            <% end_if %>                            
                            <a class="uk-button uk-button-default uk-button-small" href="/contact-us/">CONTACT US</a>
                        </div>                        
                    </div>
                </div>
            </div>
            <div class="uk-width-1-2@m extendbackground">
                <div style='z-index: 2;'>
                    <div class="uk-card-body plan-content-description">
                        $Details
                    </div>
                </div>
            </div>            
        </div>     
    </div>    
</div>            
<% end_loop %>


