require 'rails_helper'

RSpec.describe UnidadeSaude, type: :model do
  let!(:unidade_saude){ create(:unidade_saude) }
  let(:unidade_sem_nome) { }
  describe 'Validações' do
    context 'é válido' do
      it 'campos válidos' do
        expect { create(:unidade_saude) }.to change(described_class, :count).by(1)  
      end
    end

    context 'não é válido' do
      it 'sem nome' do 
        unidade_saude =  build(:unidade_saude, :sem_nome)
        expect(unidade_saude).not_to be_valid
      end
    end
    
    
  end
  
end
