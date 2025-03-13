require 'rails_helper'

RSpec.describe AmostraExame, type: :model do
  describe 'Associações' do
    it { is_expected.to have_many(:exames) }
    it { is_expected.to have_many(:amostras) }
  end
end
