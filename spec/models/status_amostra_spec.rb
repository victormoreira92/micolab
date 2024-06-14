require 'rails_helper'

RSpec.describe StatusAmostra, type: :model do
  describe 'Validações' do
    context 'é válido' do
      it 'com todos os campos válidos' do
        status_amostra = build(:status_amostra)
        expect(status_amostra).to be_valid
      end
    end

    context 'não é válido' do
      it 'sem descrição' do
        status_amostra = build(:status_amostra, :sem_descricao)
        expect(status_amostra).not_to be_valid
      end
      
    end
    
    
  end
  
end
