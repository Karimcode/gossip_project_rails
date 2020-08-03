class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
      # Méthode qui crée un potin vide et l'envoie une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
      @gossip = Gossip.new
  end

  def create
      # Méthode qui crée un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur

      @gossip = Gossip.new('title' => params[:title], 'content' => params[:content], 'city_id' => rand(City.all.first.id..City.all.last.id))
      # @gossip.user = current_user

      if @gossip.save
        flash[:success] = "Potin bien créé !"
        redirect_to root_path
      else
        render new_gossip_path
      end
  end

  def edit
      # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
      @gossip = Gossip.find(params[:id])
  end

  def update
      # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params
      # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
        @gossip = Gossip.find(params[:id])
        @gossip.title = params[:title]
        @gossip.content = params[:content]
          if @gossip.update('title' => params[:gossip][:title], 'content' => params[:gossip][:content])
            redirect_to @gossip
          else
            render :edit
          end

  end

  def destroy
      # Méthode qui récupère le potin concerné et le détruit en base
      # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
      @gossip = Gossip.find(params[:id])
      @gossip.destroy
      redirect_to gossips_path

  end

end
