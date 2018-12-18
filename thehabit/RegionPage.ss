<div class="main" role="main">
	<div class="inner typography line">
            <div class="content-container">
                    
                    
                    <% if not $DisableBookingForm %>
                    <a href="$CheckBookingToUse">
                    <div class="btn-box">
                            <div class="btn-box-content">
                                <span>Book Inspection</span> 
                            </div>                        
                    </div>    
                    </a>    
                    <p>&nbsp;</p>
                    <% end_if %>
                
                    <div class='row'>
                        <div class='col-sm-4'>
                            
                            <div class='contact-container'>
                                <h4>Contact <% if Caption %> $Caption <% else %> $Title <% end_if %> </h4>
                                $ContactInfo
                                
                            </div>    
                            <% if $Pricing %>
                            <br/>
                            <div class='pricing-container'>
                                <h4>Our Prices * </h4>
                                $Pricing
                            </div>                                
                            <% end_if %>
                            <% if not $DisableBookingForm %>
                            <br/>
                            <a href="$CheckBookingToUse">
                            <div class="btn-box">
                                    <div class="btn-box-content">
                                        <span>Book Inspection</span>
                                    </div>                        
                            </div>                                
                            </a>    
                            <% end_if %>
                            
                        </div>
                        <div class='col-sm-8'>
                            <h3><% if Caption %> $Caption <% else %> $Title <% end_if %></h3>
                            
                            $Content
                            
                                <% if $AboutUs %> <span class='content-intro'>READ MORE ABOUT US BELOW..... </span><% end_if %>
                                
                            <hr>
                            
                            $Services
                            
                            <br/>
                            
                            <% if $Files %>
                                <hr>
                                <h3>Sample report</h3>
                            <% end_if %>
                            <div class="row">
                                <% loop $Files.Sort(ID) %>
                                    <div class="col-sm-4">
                                    <div class="attachedfiletitle">    
                                    <% if $Title %><b>$Title</b><br/>SAMPLE REPORT<% else %>$file_upload.Title<% end_if %>
                                    </div>
                                    <a href="$file_upload.URL">
                                        
                                        <% if $file_upload.getPdfPreviewImage %>
                                            <img src="$file_upload.getPdfPreviewImage.CroppedImage(250,353).URL" alt="building report" style="max-width:100%; border: 1px solid #000;">   
                                        <% else %>
                                            <img src="$ThemeDir/images/building-report.png" alt="building report" style="max-width:100%;">   
                                        <% end_if %>
                                        
                                        
                                        
                                    </a>    
                                    </div>
                                <% end_loop %>                                
                            </div>    
                        </div>
                    </div>    
                
                    <% if $AboutUs %>
                        <p>&nbsp;</p>
                        <hr>                    

                        <h3>About Us</h3>
                        $AboutUs
                        
                    <%  end_if %>
                    
                    
            </div>
	</div>
</div>