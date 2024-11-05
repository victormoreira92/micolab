require 'rails_helper'

require 'rails_helper'

RSpec.describe InformacaoDomiciliar, type: :model do
  describe 'Associações' do
    it { is_expected.to belong_to(:paciente) }
  end

  describe 'Validações' do
    context 'é válido' do
      it 'com todos os atributos preenchidos' do
        expect { create(:informacao_domiciliar) }.to change(described_class, :count).by(1)
      end
    end
    context 'é inválido' do
      %w[municipio_paciente estado_paciente logradouro_paciente cep_paciente bairro_paciente pais_paciente zona].each do |atributo|
        it "sem #{I18n.t("activerecord.attributes.informacao_domiciliar.#{atributo}")}" do
          informacao_domiciliar = build(:informacao_domiciliar, "sem_#{atributo}".to_sym)
          informacao_domiciliar.valid?
          expect(informacao_domiciliar.errors[atributo.to_sym]).to include(I18n.t('errors.messages.blank'))
        end
      end
    end
  end
end
