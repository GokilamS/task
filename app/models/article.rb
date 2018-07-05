class Article < ApplicationRecord
	 validates :UserName, presence: true, length: {minimum: 20}
     validates :Email, presence: true, length: {minimum: 20}
     validates :Password, presence: true, length: {minimum: 12} 
     validates :UserName, presence: true, length: {minimum: 12}  
end
