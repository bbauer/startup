class LeadsController < ApplicationController
  def new
    @lead = Lead.new(params[:lead])

    respond_to do |format|
      if @lead.save
        format.html { redirect_to '/', :notice => 'Email was successfully created.' }
      end
    end
  end
end
