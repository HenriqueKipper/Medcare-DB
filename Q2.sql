select 
	consultas.paciente_id,
	consultas.data_hora,
	medicos.nome,
	especialidades.nome,
	consultas.status
FROM
	consultas
JOIN
	medicos ON	medicos.id = consultas.medico_id
JOIN
	especialidades ON especialidades.id = medicos.especialidade_id
JOIN
	pacientes ON pacientes.id = consultas.paciente_id

WHERE pacientes.nome = 'Carlos Silva'