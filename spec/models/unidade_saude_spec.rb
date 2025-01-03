require 'rails_helper'

RSpec.describe UnidadeSaude, type: :model do
  describe 'Validações' do
    context 'é válido' do
      it 'com todos os atributos' do
        expect { create(:unidade_saude) }.to change(described_class, :count).by(1)
      end
    end
    context 'é inválido' do
      %w[ endereco nome cep email_unidade_saude telefone cidade estado pais].each do |atributo|
        it "sem #{atributo}" do
          unidade_saude = build(:unidade_saude, atributo.to_sym => nil)
          unidade_saude.valid?
          expect(unidade_saude.errors[atributo.to_sym]).not_to be_empty
        end
      end

      it 'email não é unico' do
        unidade_saude = create(:unidade_saude)
        unidade_saude2 = build(:unidade_saude, email_unidade_saude: unidade_saude.email_unidade_saude)
        unidade_saude2.valid?
        expect(unidade_saude2.errors[:email_unidade_saude]).to include ("já está em uso")
      end

      it 'email em outro formato' do
        unidade_saude = build(:unidade_saude, email_unidade_saude: "email.com")
        unidade_saude.valid?
        expect(unidade_saude.errors[:email_unidade_saude]).to include (I18n.t('errors.messages.invalid') % { email: unidade_saude.email_unidade_saude })
      end
    end
  end
end
