require 'rails_helper'

RSpec.describe InformacaoClinica, type: :model do
  describe 'Associações' do
    it { is_expected.to belong_to(:paciente) }
  end

  describe 'Validações' do
    context 'é válido' do
      it 'com todos os atributos preenchidos' do
        expect { create(:informacao_clinica) }.to change(described_class, :count).by(1)
      end
    end
    context 'é inválido' do
      %w[data_inicio_sintomas caso numero_prontuario lesao_pulmonar uso_antifungicos atividade_risco].each do |atributo|
        it "sem #{I18n.t("activerecord.attributes.informacao_clinica.#{atributo}")}" do
          informacao_clinica = build(:informacao_clinica, "sem_#{atributo}".to_sym)
          informacao_clinica.valid?
          expect(informacao_clinica.errors[atributo.to_sym]).to include(I18n.t('errors.messages.blank'))
        end
      end

      it 'associar idade gestacional a paciente masculino' do
        paciente = create(:paciente, :masculino)
        informacao_clinica = build(:informacao_clinica, :idade_gestacional, paciente: paciente)
        informacao_clinica.valid?
        expect(informacao_clinica.errors[:idade_gestacional]).to include(I18n.t('activerecord.errors.models.'\
        'informacao_clinica.attributes.idade_gestacional.paciente_sexo_masculino'))
      end

      it 'lesão pulmonar sem pelo menos um dado descritivo' do
        informacao_clinica = build(:informacao_clinica, lesao_pulmonar: true, tipo_lesao_pulmonar: nil,
                                   localizacao_lesao_pulmonar: nil)
        informacao_clinica.valid?
        expect(informacao_clinica.errors[:lesao_pulmonar]).to include(I18n.t('activerecord.errors.models.'\
        'informacao_clinica.attributes.lesao_pulmonar.lesao_pulmonar_sem_descricao'))
      end

    end
  end
end
