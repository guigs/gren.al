class JogosController < AdminController
  # GET /jogos
  # GET /jogos.xml
  def index
    @jogos = Jogo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jogos }
    end
  end

  # GET /jogos/1
  # GET /jogos/1.xml
  def show
    @jogo = Jogo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jogo }
    end
  end

  def inexistente
  end

  # GET /jogos/new
  # GET /jogos/new.xml
  def new
    @jogo = Jogo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jogo }
    end
  end

  # GET /jogos/1/edit
  def edit
    @jogo = Jogo.find(params[:id])
  end

  # POST /jogos
  # POST /jogos.xml
  def create
    @jogo = Jogo.new(params[:jogo])

    respond_to do |format|
      if @jogo.save
        format.html { redirect_to(@jogo, :notice => 'Jogo cadastrado com sucesso.') }
        format.xml  { render :xml => @jogo, :status => :created, :location => @jogo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jogo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jogos/1
  # PUT /jogos/1.xml
  def update
    @jogo = Jogo.find(params[:id])

    respond_to do |format|
      if @jogo.update_attributes(params[:jogo])
        format.html { redirect_to(@jogo, :notice => 'Jogo atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jogo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jogos/1
  # DELETE /jogos/1.xml
  def destroy
    @jogo = Jogo.find(params[:id])
    @jogo.destroy

    respond_to do |format|
      format.html { redirect_to(jogos_url) }
      format.xml  { head :ok }
    end
  end
end
