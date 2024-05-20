Rails.application.routes.draw do

  # Routes for the Note resource:

  # CREATE
  post("/insert_note", { :controller => "notes", :action => "create" })
          
  # READ
  get("/notes", { :controller => "notes", :action => "index" })
  
  get("/notes/:path_id", { :controller => "notes", :action => "show" })
  
  # UPDATE
  
  post("/modify_note/:path_id", { :controller => "notes", :action => "update" })
  
  # DELETE
  get("/delete_note/:path_id", { :controller => "notes", :action => "destroy" })

  #------------------------------

  # Routes for the Person resource:

  # CREATE
  post("/insert_person", { :controller => "people", :action => "create" })
          
  # READ
  get("/people", { :controller => "people", :action => "index" })
  
  get("/people/:path_id", { :controller => "people", :action => "show" })
  
  # UPDATE
  
  post("/modify_person/:path_id", { :controller => "people", :action => "update" })
  
  # DELETE
  get("/delete_person/:path_id", { :controller => "people", :action => "destroy" })

  #------------------------------

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  get("/", { :controller => "home", :action => "dashboard" })
  
end
