require 'rails_helper'

RSpec.describe PacienteUnidadeSaude, type: :model do
  describe 'Associações' do
    it { is_expected.to belong_to(:paciente) }
    it { is_expected.to belong_to(:unidade_saude) }
  end

end
