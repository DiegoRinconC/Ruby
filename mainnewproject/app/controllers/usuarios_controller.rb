class UsuariosController < ApplicationController
  def new
  end

  # Proceso para crear un usuario
  def create
  	@usuario = Usuario.new usuario_params
  	@usuario.save
    redirect_to usuarios_path
  end

  def index
    #@alluser = Image.all
    @allUsuarios = Usuario.all
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy

    redirect_to usuarios_path
  end

  def edit 
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
 
  if @usuario.update(usuario_params)
    redirect_to usuarios_path
  else
    render 'edit'
  end
end
 
private
  private
    def usuario_params
       params.require(:usuario).permit(:nombre, :apellido, :correo)
    end  

end
