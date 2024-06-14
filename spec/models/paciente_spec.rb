require 'rails_helper'

RSpec.describe Paciente, type: :model do
  describe 'Validações' do
    context 'é válido se' do
      it 'com todos os campos' do
        paciente = build(:paciente)
        expect(paciente).to be_valid
      end
      
      it 'sem etnia' do
        paciente_sem_etnia = build(:paciente, :sem_etnia)
        expect(paciente_sem_etnia).to be_valid
      end

      it 'sem cns' do 
        paciente_sem_cns = build(:paciente, :sem_cns)
        expect(paciente_sem_cns).to be_valid
      end
      
    end

    context 'não é valido se' do
      it 'sem nome da mãe' do
        paciente_sem_nome_mae = build(:paciente, :sem_nome_mae)
        expect(paciente_sem_nome_mae).not_to be_valid
      end

      it 'sem nome' do
        paciente_sem_nome = build(:paciente, :sem_nome)
        expect(paciente_sem_nome).not_to be_valid
      end

      it 'sem data_nascimento' do
        paciente_sem_data = build(:paciente, :sem_data_nascimento)
        expect(paciente_sem_data).not_to be_valid
      end
      
      
      
    end
    
    
  end
  
end
