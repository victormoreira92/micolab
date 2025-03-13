require 'rails_helper'

RSpec.describe Exame, type: :model do
  describe 'Associações' do
    it { is_expected.to belong_to(:status_exame) }
    it { is_expected.to have_many(:amostras) }
  end

  describe 'Validações' do
    context 'é válido' do
      it 'com todos os atributos preenchidos' do
        expect { create(:exame) }.to change(described_class, :count).by(1)
      end
    end
    context 'é inválido' do
      %w[nome_exame metodologia prazo_liberacao].each do |atributo|
        it "sem #{I18n.t("activerecord.attributes.exame.#{atributo}")}" do
          exame = build(:exame, "sem_#{atributo}".to_sym)
          exame.valid?
          expect(exame.errors[atributo.to_sym]).to include(I18n.t('errors.messages.blank'))
        end
      end
    end
  end
end
