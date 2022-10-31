class PagesController < ApplicationController
    def index
        if params[:search].present?
            @photos = Photo.where("Lower(name) LIKE :search" , search: "%#{params[:search].downcase}%")
        else
            @photos = Photo.all
        end
    end
end
