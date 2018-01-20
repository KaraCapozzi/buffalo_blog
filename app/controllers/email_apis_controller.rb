class EmailApisController < ApplicationController

def new
  
end

def create
  EmailApi.add_email params[:email]
end


end
