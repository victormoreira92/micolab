require 'rails_helper'

RSpec.describe StatusExame, type: :model do
  describe 'Validações' do
    context 'válido' do
      it 'com todos os campos válidos' do
        expect { create(:status_exame) }.to change(described_class, :count).by(1)
      end
    end

    context 'não é válido' do
      it 'sem etapa' do
        status_exame = build(:status_exame, :sem_etapa)
        expect(status_exame).not_to be_valid
      end

      it 'sem descricao' do
        status_exame = build(:status_exame, :sem_etapa)
        expect(status_exame).not_to be_valid
      end
    end
  end
end
