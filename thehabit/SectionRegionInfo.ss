<% if reginfo %>
    <% loop reginfo %>

        <h4><% if Caption %> $Caption <% else %> $Title <% end_if %> </h4>
        $ContactInfo 
        
        <% if not $DisableBookingForm %>
        
        <br/>
        
        <a href="$CheckBookingToUse">
        <div class="btn-box">
                <div class="btn-box-content">
                    <span>Book Inspection </span>
                </div>                        
        </div>   
        </a>    
        <% end_if %>
        <br/>
        <a href="/directory/$URLSegment" class="btn" role="button">View Pricing</a>
        <a href="/directory/$URLSegment" class="btn" role="button">See Sample Reports</a>
        <a href="/directory/$URLSegment" class="btn" role="button">Read More</a>


    <% end_loop %>

<% end_if %>
