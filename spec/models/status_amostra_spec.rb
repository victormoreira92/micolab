require 'rails_helper'

RSpec.describe StatusAmostra, type: :model do
  describe 'Validação' do
    context 'é válido' do
      it 'com todos os atributos' do
        status_amostra = build(:status_amostra)
        expect(status_amostra).to be_valid
      end
    end

    context 'é inválido' do
      %w[situacao descricao].each do |atributo|
        it "#{atributo} em branco" do
          status_amostra = build(:status_amostra, "sem_#{atributo}".to_sym)
          status_amostra.valid?
          expect(status_amostra.errors[atributo]).to include "não pode ficar em branco"
        end
      end
    end
  end
end
