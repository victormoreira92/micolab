require 'rails_helper'
require 'cancan/matchers'

RSpec.describe AdministradorAbility, type: :model do
  let!(:usuario_secretario) { create(:usuario, :secretario) }
  let!(:ability) { described_class.new(usuario_secretario) }

  describe 'Permissões para Secretário' do
    context 'sobre permissões de Unidade de Saude' do
      let(:ability) { described_class.new(usuario_secretario, 'unidades_saudes') }

      it 'pode ler' do
        expect(ability).to be_able_to :read, UnidadeSaude
      end
    end

    context 'sobre permissões de Requisição' do
      let(:ability) { described_class.new(usuario_secretario, 'requisicoes') }

      it 'pode ler' do
        expect(ability).to be_able_to :read, Requisicao
      end

      it 'pode criar' do
        expect(ability).to be_able_to :create, Requisicao
      end

      it 'pode editar' do
        expect(ability).to be_able_to :update, Requisicao
      end

      it 'pode destruir' do
        expect(ability).to be_able_to :destroy, Requisicao
      end
    end
  end
end
