select
	medicos.nome,
	medicos.valor_consulta,
	medicos.crm,
	especialidades.nome
from
	medicos
JOIN
	especialidades on especialidades.id = medicos.especialidade_id


ORDER by medicos.valor_consulta DESC