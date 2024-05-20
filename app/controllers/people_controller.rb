class PeopleController < ApplicationController
  def index
    matching_people = Person.all

    @list_of_people = matching_people.order({ :created_at => :desc })

    render({ :template => "people/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_people = Person.where({ :id => the_id })

    @the_person = matching_people.at(0)

    render({ :template => "people/show" })
  end

  def create
    the_person = Person.new
    the_person.first_name = params.fetch("query_first_name")
    the_person.last_name = params.fetch("query_last_name")
    the_person.nickname = params.fetch("query_nickname")
    the_person.dob = params.fetch("query_dob")
    the_person.person_notes = params.fetch("query_person_notes")
    the_person.primary_relationship_id = params.fetch("query_primary_relationship_id")
    the_person.user_email = params.fetch("query_user_email")

    if the_person.valid?
      the_person.save
      redirect_to("/people", { :notice => "Person created successfully." })
    else
      redirect_to("/people", { :alert => the_person.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_person = Person.where({ :id => the_id }).at(0)

    the_person.first_name = params.fetch("query_first_name")
    the_person.last_name = params.fetch("query_last_name")
    the_person.nickname = params.fetch("query_nickname")
    the_person.dob = params.fetch("query_dob")
    the_person.person_notes = params.fetch("query_person_notes")
    the_person.primary_relationship_id = params.fetch("query_primary_relationship_id")
    the_person.user_email = params.fetch("query_user_email")

    if the_person.valid?
      the_person.save
      redirect_to("/people/#{the_person.id}", { :notice => "Person updated successfully."} )
    else
      redirect_to("/people/#{the_person.id}", { :alert => the_person.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_person = Person.where({ :id => the_id }).at(0)

    the_person.destroy

    redirect_to("/people", { :notice => "Person deleted successfully."} )
  end
end
