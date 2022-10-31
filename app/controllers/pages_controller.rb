class PagesController < ApplicationController
    def index
        if params[:search].present?
            @photos = Photo.where("name LIKE :search" , search: "%#{params[:search]}%")
        else
            @photos = Photo.all
        end
    end
end
