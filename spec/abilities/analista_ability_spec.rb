require 'rails_helper'
require 'cancan/matchers'

RSpec.describe AnalistaAbility, type: :model do
  let!(:usuario_analista) { create(:usuario, :analista) }
  let!(:ability) { described_class.new(usuario_analista) }

  describe 'Permissões para Administrador' do
    context 'sobre permissões de Unidade de Saude' do
      let(:ability) { described_class.new(usuario_analista, 'unidades_saudes') }

      it 'pode ler' do
        expect(ability).to be_able_to :read, UnidadeSaude
      end
    end
  end
end
