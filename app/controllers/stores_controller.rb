class StoresController < ApplicationController
  
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find_by(idshopping: params['idshopping'])
  end

  def new
    @store = Store.new
  end

  def create
    store = Store.new(permit)
    if store.save
      @msg = 'valores foram salvos'
    else
      @msg = store.errors.messages
    end
  end

  def edit
    @store = Store.find_by(idshopping: params['idshopping'])   
  end

  def uptade
        store = Store.find_by(idshopping: params['idshopping'])
        if store.update_attributes(permit)
          @msg= "Atualizado com sucesso"
        else
          @msg =store.errors.messages 
      end
  end

  def destroy
           store = Stores.find_by(idshopping: params['idshopping'])
        if store.destroy
          @msg= "Deletado com sucesso"
        else
          @msg =store.errors.messages 
      end
  end

  private

  def permit
    params['store'].permit(:name, :floor , :idshopping)
  end
end

