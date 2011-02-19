class GrenaisController < ApplicationController
  
  def index
  end

  def show
    @grenal = Jogo.find_by_numero(params[:numero])
    if @grenal.nil?
      if params[:numero].to_i < Jogo.maximum(:numero)
        flash.now[:notice] = "Grenal #{params[:numero]} ainda não cadastrado."
        render :action => 'inexistente'
      else
        flash.now[:notice] = "Grenais futuros ainda não cadastrados."
        render :action => 'inexistente'
      end
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @grenal }
      end
    end
  end
  
end
