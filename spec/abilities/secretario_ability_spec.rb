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
  end
end
