class SerchUserItemsController < ApplicationController

  def index
    if params[:keyword]
      # @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword], tagId: '1001908')
      @items = RakutenWebService::Ichiba::Product.search(keyword: params[:keyword])
      render 'index'
    end
  end
end
