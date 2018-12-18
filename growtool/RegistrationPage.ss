<div class="about-intro">
    <div class="uk-container" >
        <div class="uk-card uk-card-default uk-card-body uk-padding-small">
            <div>
                $Content
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

<div class='registrationform'>
    <div class="uk-container-xsmall uk-padding-small" >
        $Form
        <br/>
    </div>        
</div>    

<div id="modal-close-default-terms" uk-modal>
    <div class="uk-modal-dialog">

        <button class="uk-modal-close-default" type="button" uk-close></button>

        <div class="uk-modal-header">
            <h2 class="uk-modal-title">Terms & Conditions</h2>
        </div>

        <div class="uk-modal-body" uk-overflow-auto>

            $SiteConfig.Terms
        </div>

        <div class="uk-modal-footer">
            
            <form id="acepttermscond">
                <label><input class="uk-checkbox" type="checkbox" id="registrationacceptterms"> <b>I have read and agree to the Terms and Conditions</b></label>
            </form>            
            
            
            <button class="uk-button uk-button-default uk-modal-close" type="button">Close</button>
        </div>
        
    </div>
</div>


