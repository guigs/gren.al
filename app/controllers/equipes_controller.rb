class EquipesController < AdminController
  # GET /equipes
  # GET /equipes.xml
  def index
    @equipes = Equipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @equipes }
    end
  end

  # GET /equipes/1
  # GET /equipes/1.xml
  def show
    @equipe = Equipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @equipe }
    end
  end

  # GET /equipes/new
  # GET /equipes/new.xml
  def new
    @equipe = Equipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @equipe }
    end
  end

  # GET /equipes/1/edit
  def edit
    @equipe = Equipe.find(params[:id])
  end

  # POST /equipes
  # POST /equipes.xml
  def create
    @equipe = Equipe.new(params[:equipe])

    respond_to do |format|
      if @equipe.save
        format.html { redirect_to(@equipe, :notice => 'Time criado com sucesso.') }
        format.xml  { render :xml => @equipe, :status => :created, :location => @equipe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @equipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /equipes/1
  # PUT /equipes/1.xml
  def update
    @equipe = Equipe.find(params[:id])

    respond_to do |format|
      if @equipe.update_attributes(params[:equipe])
        format.html { redirect_to(@equipe, :notice => 'Time atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @equipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /equipes/1
  # DELETE /equipes/1.xml
  def destroy
    @equipe = Equipe.find(params[:id])
    @equipe.destroy

    respond_to do |format|
      format.html { redirect_to(equipes_url) }
      format.xml  { head :ok }
    end
  end
end
