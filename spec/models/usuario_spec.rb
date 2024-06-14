require 'rails_helper'

RSpec.describe Usuario, type: :model do
  let!(:usuario){ create(:usuario) }

  describe 'Validações' do
    context 'válido' do
      it 'com todos os campos válidos' do
        expect { create(:usuario) }.to change(described_class, :count).by(1)
      end
    end
    
  end
  
end
