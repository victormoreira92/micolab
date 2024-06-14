require 'rails_helper'

RSpec.describe Amostra, type: :model do
  describe 'Validações' do
    context 'é válido' do
      it 'com todos os atrbutos' do
        amostra = build(:amostra)
        expect(amostra).to be_valid
      end
    end

    context 'não é válido' do
      it 'sem data de coleta' do
        amostra_sem_data_coleta = build(:amostra, :sem_data_coleta)
        expect(amostra_sem_data_coleta).not_to be_valid
      end
      
      
    end
    
    
  end
  
end
