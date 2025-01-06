require 'rails_helper'

RSpec.describe Requisicao, type: :model do
  describe 'Associações' do
    it { is_expected.to belong_to(:paciente) }
    it { is_expected.to have_one(:informacao_clinica) }
    it { is_expected.to have_many(:amostras) }
  end

  describe 'Validação' do
    context 'é válido' do
      it 'com todos os atributos' do
        requisicao = build(:requisicao)
        expect(requisicao).to be_valid
      end
    end

    context 'é inválido' do
      %w[numero_requisicao status_requisicao].each do |atributo|
        it "sem #{atributo}" do
          requisicao = build(:requisicao, "sem_#{atributo}".to_sym)
          requisicao.valid?
          expect(requisicao.errors[atributo]).to include(I18n.t('errors.messages.blank'))
        end
      end

      it "sem paciente" do
        requisicao = build(:requisicao, paciente: nil)
        requisicao.valid?
        expect(requisicao.errors[:paciente]).to include(I18n.t('errors.messages.required'))
      end

    end
  end
end
