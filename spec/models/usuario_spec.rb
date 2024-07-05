require 'rails_helper'

RSpec.describe Usuario, type: :model do
  let!(:usuario){ create(:usuario) }

  describe 'Validações' do
    context 'válido' do
      it 'com todos os campos válidos' do
        expect { create(:usuario) }.to change(described_class, :count).by(1)
      end
    end

    context 'não é válido' do
      it 'sem nome' do
        usuario = build(:usuario, :sem_nome)
        expect(usuario).not_to be_valid
      end

      it 'sem senha' do
        usuario = build(:usuario, :sem_senha)
        expect(usuario).not_to be_valid
      end

      it 'sem email' do
        usuario = build(:usuario, :sem_email)
        expect(usuario).not_to be_valid
      end

      it 'sem confirmação de senha' do
        usuario = build(:usuario, :sem_confirmacao_senha)
        expect(usuario).not_to be_valid
      end
            
    end
    
    
  end
  
end
