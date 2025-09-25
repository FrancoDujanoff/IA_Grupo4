(defrule estado-enfermedad
	=>
	(printout t "Cual es el estado de la enfermedad?(incipiente/avanzado/terminal): ")
	(assert (ee(read)))
)

(defrule estado-avanzado
	(ee ?e)
	=>
	(if (eq ?e avanzado)
	then
		(printout t "El paciente sera Curado")
	)
)

(defrule estado-incipiente
	(ee ?e)
	=>
	(if (eq ?e incipiente)
	then
		(printout t "La concentracion de la sustancia es mayor o igual a 70 y menor a 80?(si/no): ")
		(assert (cs(read)))
	)
)

(defrule estado-incipiente-cs
	(cs ?s)
	=>
	(if (eq ?s si)
	then
		(printout t "El Paciente sera Curado")
	else
		(printout t "El Paciente no sera Curado")
	)
)

(defrule estado-terminal
	(ee ?t)
	=>
	(if (eq ?t terminal)
	then
		(printout t "La Condición Fisica es Fuerte(si/no):")
		(assert (cf(read)))
	)
)

(defrule estado-terminal-cf
	(cf ?f)
	=>
	(if (eq ?f si)
	then
		(printout t "El Paciente no sera Curado")
	else
		(printout t "El Paciente sera Curado")
	)
)