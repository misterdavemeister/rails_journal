class EntriesController < ApplicationController
  include EntriesHelper
  
  def index
    @entries = Entry.all
  end
  
  def show
    @entry = Entry.find(params[:id])
    @comment = Comment.new
    @comment.entry_id = @entry.id
  end
  
  def new
    @entry = Entry.new
  end
  
  def create
=begin 
  what is happening:
    @entry = Entry.new
    @entry.entry_type = params[:entry][:entry_type]
    @entry.input = params[:entry][:input]
=end
    @entry = Entry.new(entry_params)
    @entry.save
    
    flash.notice = "Entry '#{@entry.input}' Created!"
    
    redirect_to entry_path(@entry)
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    
    flash.notice = "Entry '#{@entry.input}' Deleted!"
    
    redirect_to entries_path
  end
  
  def edit 
    @entry = Entry.find(params[:id])
  end
  
  def update
    @entry = Entry.find(params[:id])
    @entry.update(entry_params)
    
    flash.notice = "Entry '#{@entry.input}' Updated!"
    
    redirect_to entry_path(@entry) 
  end
  
  #### TAGS ####
end
