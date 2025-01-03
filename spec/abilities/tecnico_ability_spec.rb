require 'rails_helper'
require 'cancan/matchers'

RSpec.describe TecnicoAbility, type: :model do
  let!(:usuario_tecnico) { create(:usuario, :tecnico) }
  let!(:ability) { described_class.new(usuario_tecnico) }

  describe 'Permissões para Tecnico' do
    context 'sobre permissões de Unidade de Saude' do
      let(:ability) { described_class.new(usuario_tecnico, 'unidades_saudes') }

      it 'pode ler' do
        expect(ability).to be_able_to :read, UnidadeSaude
      end
    end
  end
end
