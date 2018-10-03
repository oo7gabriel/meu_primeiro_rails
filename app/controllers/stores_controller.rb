class StoresController < ApplicationController
  
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find_by(id: params['id'])
  end

  def new
    @store = Store.new
  end

  def create
    store = Store.new(permit)
    if store.save
      @msg = 'valores foram salvos'
    else
      @msg = shop.errors.messages
    end
  end

  def edit
    @store = Store.find_by(id: params['id'])   
  end

  def uptade
       store = Store.find_by(id: params['id'])
        if store.update_attributes(permit)
          @msg= "Atualizado com sucesso"
        else
          @msg =shop.errors.messages 
     end
  end

  def destroy
           store = Store.find_by(id: params['id'])
        if store.destroy
          @msg= "Deletado com sucesso"
        else
          @msg =shop.errors.messages 
      end
  end

  private

  def permit
    params['store'].permit(:name, :floor , :idshopping)
  end
end

