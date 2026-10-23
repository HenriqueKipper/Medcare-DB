select 
	consultas.paciente_id as id,
	pacientes.nome as Paciente,
	consultas.data_hora as Data,
	medicos.nome as Medico,
	especialidades.nome as Especialidade,
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