require 'rails_helper'

RSpec.describe Paciente, type: :model do
  describe 'Validação' do
    context 'é válido' do
      it 'com todos os atributos' do
        paciente = build(:paciente)
        expect(paciente).to be_valid
      end
    end

    context 'é inválido' do
      %w[ nome_paciente data_nascimento nome_mae sexo].each do |atributo|
        it "#{atributo} em branco" do
          paciente = build(:paciente, "sem_#{atributo}".to_sym)
          paciente.valid?
          expect(paciente.errors[atributo]).to include "não pode ficar em branco"
        end
      end
    end



  end

end
