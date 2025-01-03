require 'rails_helper'

RSpec.describe MaterialBiologico, type: :model do
  describe 'Validação' do
    context 'é válido' do
      it 'com todos os atributos preenchidos' do
        expect { create(:material_biologico) }.to change(described_class, :count).by(1)
      end
    end

    context 'é inválido' do
      %w[nome_material_biologico sigla].each do |atributo|
        it "sem #{I18n.t("activerecord.attributes.material_biologico.#{atributo}")}" do
          material_biologico = build(:material_biologico, "sem_#{atributo}".to_sym)
          material_biologico.valid?
          expect(material_biologico.errors[atributo.to_sym]).to include(I18n.t('errors.messages.blank'))
        end
      end
    end


  end

end
