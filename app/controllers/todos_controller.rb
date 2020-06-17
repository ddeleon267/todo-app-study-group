class TodosController < ApplicationController

    get '/todos' do   ## index action
        @todos = Todo.all
        erb :'todos/index'
    end

    get '/todos/new' do ## new action
        erb :'todos/new'
    end

    post '/todos' do  ## create action
        todo = Todo.new(params) # doesn't need to be an instance varible - not rendered in a view

        if todo.save 
            redirect "/todos/#{todo.id}"
        else
            redirect "/todos/new"
        end
    end

    get '/todos/:id' do ## show action
        @todo = Todo.find_by_id(params[:id])

        if @todo 
            erb :'todos/show'
        else
            redirect '/todos'
        end
    end

end