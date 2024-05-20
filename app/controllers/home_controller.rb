class HomeController < ApplicationController

def dashboard

  matching_people = Person.all

  @list_of_people = matching_people.order({ :dob => :desc })

  render({ :template => "home/dashboard" })

end

end
