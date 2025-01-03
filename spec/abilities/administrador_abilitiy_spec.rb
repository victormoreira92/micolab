require 'rails_helper'
require 'cancan/matchers'

RSpec.describe AdministradorAbility, type: :model do
  let!(:usuario_administrador) { create(:usuario, :administrador) }
  let!(:ability) { described_class.new(usuario_administrador) }

  describe 'Permissões para Administrador' do
    context 'sobre permissões de Unidade de Saude' do
      let(:ability) { described_class.new(usuario_administrador, 'unidades_saudes') }

      it 'pode gerenciar' do
        expect(ability).to be_able_to :manage, UnidadeSaude
      end
    end
  end
end
