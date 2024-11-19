require 'rails_helper'

RSpec.describe StatusResultado, type: :model do
  describe 'Validações' do
    context 'válido' do
      it 'com todos os campos válidos' do
        expect { create(:status_resultado) }.to change(described_class, :count).by(1)
      end
    end

    context 'não é válido' do
      it 'sem etapa' do
        status_resultado = build(:status_resultado, etapa: nil)
        expect(status_resultado).not_to be_valid
      end

      it 'sem descrição' do
        status_resultado = build(:status_resultado, descricao: nil)
        expect(status_resultado).not_to be_valid
      end
    end
  end
end
