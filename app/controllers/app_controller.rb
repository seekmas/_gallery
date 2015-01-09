class AppController < ApplicationController

    def index
        @activities = Activity.all
        render layout: 'bootstrap'
    end

    def show
        @activity = Activity.includes(:visitors).find(query_id)
    end

    def form
        @activity = Activity.includes(:scenes , :fields).find(query_id)
        render layout: 'bootstrap'
    end

    def form_handle

        @data = params

        @visotor = Visitor.create({:activity_id => @data[:activity_id]})

        persist = {:activity_id => @data[:activity_id]};

        @data.each do |d|
            if /^\d+$/.match(d[0])
                persist[:field_id] = d[0]
                persist[:field_value] = d[1]
                persist[:visitor_id] = @visotor.id

                Result.create(persist)
            end
        end


        render
    end


    private

    def form_params
        params
    end

    def query_id
        params[:id]
    end
end
