class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         attr_accessible :primer_nombre, :primer_apellido, :nickname, :password, :password_confirmation,
         				:email, :encrypted_password

        has_many :statuses

        validates :primer_nombre, presence: true
        validates :primer_apellido, presence: true
        validates :nickname, presence: true, 
        					 uniqueness: true#,
        					 #format: {
        					 	#with: /a-zA-Z0-9_-/,
                    #with: /a-zA-Z/,
        					 	#message: 'El nickname debe contener un formato adecuado (a-zA-Z0-9_-)'
        					 #}

        def nombre_completo
        	primer_nombre + " " + primer_apellido
        end
end
