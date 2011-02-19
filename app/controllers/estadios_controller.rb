class EstadiosController < AdminController
  # GET /estadios
  # GET /estadios.xml
  def index
    @estadios = Estadio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estadios }
    end
  end

  # GET /estadios/1
  # GET /estadios/1.xml
  def show
    @estadio = Estadio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estadio }
    end
  end

  # GET /estadios/new
  # GET /estadios/new.xml
  def new
    @estadio = Estadio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estadio }
    end
  end

  # GET /estadios/1/edit
  def edit
    @estadio = Estadio.find(params[:id])
  end

  # POST /estadios
  # POST /estadios.xml
  def create
    @estadio = Estadio.new(params[:estadio])

    respond_to do |format|
      if @estadio.save
        format.html { redirect_to(@estadio, :notice => 'Estádio criado com sucesso.') }
        format.xml  { render :xml => @estadio, :status => :created, :location => @estadio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estadio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estadios/1
  # PUT /estadios/1.xml
  def update
    @estadio = Estadio.find(params[:id])

    respond_to do |format|
      if @estadio.update_attributes(params[:estadio])
        format.html { redirect_to(@estadio, :notice => 'Estádio atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estadio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estadios/1
  # DELETE /estadios/1.xml
  def destroy
    @estadio = Estadio.find(params[:id])
    @estadio.destroy

    respond_to do |format|
      format.html { redirect_to(estadios_url) }
      format.xml  { head :ok }
    end
  end
end
