class Rh < ActiveRecord::Base
	#def self.search(query)
		
	scope :search, ->(query){ where("Nome like ?", "%#{query}%") }		
	validates_presence_of :Matricula, :Nome,:LotacaoDeTrabalho, :Cargo, :Telefone, :Celular, :Email #Este campo é obrigatório
	validates_uniqueness_of :Cargo and :LotacaoDeTrabalho 
	validates_uniqueness_of :Matricula , :Email #Este campo é único
	
end
	
