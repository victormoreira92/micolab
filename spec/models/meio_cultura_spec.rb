require 'rails_helper'

RSpec.describe MeioCultura, type: :model do
  describe 'Validação' do
    context 'é válido' do
      it 'com todos os atributos preenchidos' do
        expect { create(:meio_cultura) }.to change(described_class, :count).by(1)
      end
    end

    context 'é inválido' do
      %w[ nome_meio_cultura validade_meio_cultura tipo_meio_cultura
          fabricante_meio_cultura lote_meio_cultura].each do |atributo|
        it "sem #{I18n.t("activerecord.attributes.meio_cultura.#{atributo}")}" do
        meio_cultura = build(:meio_cultura, "sem_#{atributo}".to_sym)
        meio_cultura.valid?
          expect(meio_cultura.errors[atributo.to_sym]).to include(I18n.t('errors.messages.blank'))
        end
      end
    end
  end
end
