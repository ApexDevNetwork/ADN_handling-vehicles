Config = {
	Fields = {
		{ name = "fMass", type = "float", description = [[
			El peso del vehículo. Los valores deben expresarse en kilogramos..
			<ul>
				<li>Se utiliza cuando el vehículo choca con otro vehículo o con un objeto no estático.</li>
			</ul>
		]] },
		{ name = "fInitialDragCoeff", type = "float", description = [[
			Establece el coeficiente de arrastre del vehículo. Aumento para simular la resistencia aerodinámica.
			<ul>
				<li>Value: 10-120</li>
			</ul>
		]] },
		{ name = "fDownforceModifier", type = "float" },
		{ name = "fPercentSubmerged", type = "float", description = [[
			El porcentaje de la "altura flotante" del vehículo después de caer al agua, antes de hundirse..
			<ul>
				<li>Default - 85% para vehículos terrestres, vainilla. El valor dejará de hundir el vehículo para que flote un momento antes de hundirse. Barcos excluidos.</li>
				<li>Value: Cualquier porcentaje. Debe expresarse en decimal. Ejemplo: 0.70 (70%)</li>
				<li>Un número inválido hará que el vehículo se hunda sin que el conductor se ahogue.</li>
			</ul>
		]] },
		{ name = "vecCentreOfMassOffset", type = "vector", description = [[
			Desplaza el centro de gravedad en metros de lado a lado.<br>
			Valores (0 significa que el centro de gravedad estará en el centro del vehículo):
			<ul>
				<li>X: -10.0 to 10.0. Los valores positivos mueven el centro de gravedad hacia la derecha.</li>
				<li>Y: -10.0 to 10.0. Los valores positivos mueven el centro de gravedad hacia adelante.</li>
				<li>Z: -10.0 to 10.0. Los valores positivos mueven el centro de gravedad hacia arriba.</li>
			</ul>
		]] },
		{ name = "vecInertiaMultiplier", type = "vector" },
		{ name = "fDriveBiasFront", type = "float", description = [[
			Se utiliza para determinar si un vehículo es de tracción delantera, trasera o en las cuatro ruedas.<br>Values:
			<ul>
				<li>0.0 significa que el vehículo tiene tracción trasera.</li>
				<li>1.0 significa que el vehículo tiene tracción delantera.</li>
				<li>Cualquier valor entre 0.01 y 0.99 es tracción en las cuatro ruedas..</li>
				<li>0.5 dan la misma fuerza a los ejes delantero y trasero, siendo el 4WD perfecto.</li>
			</ul>
		]] },
		{ name = "nInitialDriveGears", type = "integer", description = [[
			Esta línea determina cuántas velocidades de avance / marchas contiene la transmisión de un vehículo.<br>
			Values: 1 or more.
		]] },
		{ name = "fInitialDriveForce", type = "float", description = [[
			Esto modifica el cálculo de la fuerza motriz del juego (a partir de la salida de la transmisión).<br>
			Values (0.01 - 2.0 and above):
			<ul>
				<li>1.0 utiliza el cálculo de la fuerza motriz sin modificar.</li>
				<li>Los valores inferiores a 1,0 le darán al vehículo menos fuerza motriz..</li>
				<li>Los valores superiores a 1,0 producirán más fuerza motriz.</li>
			</ul>
		]] },
		{ name = "fDriveInertia", type = "float", description = [[
			Describe qué tan rápido se acelerará un motor.
			Values (0.01 - 2.0):
			<ul>
				<li>El valor predeterminado es 1.0 (o sin modificación de la inercia del variador).</li>
				<li>Valores más grandes = Redline más rápida (velocidad máxima del motor)</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleUpShift", type = "float", description = [[
			Multiplicador de velocidad del embrague en cambios ascendentes.
			<ul>
				<li>Números más grandes = turnos más rápidos.</li>
			</ul>
		]] },
		{ name = "fClutchChangeRateScaleDownShift", type = "float", description = [[
			Multiplicador de velocidad del embrague en cambios descendentes.
			<ul>
				<li>Números más grandes = turnos más rápidos.</li>
			</ul>
		]] },
		{ name = "fInitialDriveMaxFlatVel", type = "float", description = [[
			Esto determina la velocidad del vehículo en la línea roja en la marcha superior (no en el espectáculo). Establecer este valor NO garantiza que el vehículo alcance la velocidad indicada.<br>
			Values (0.00 and above):
			<ul>
				<li>Multiplique el número en el archivo por 0-82 para obtener la velocidad en mph.</li>
				<li>Multiplica por 1,32 para obtener la velocidad en kmh.</li>
			</ul>
		]] },
		{ name = "fBrakeForce", type = "float", description = [[
			Multiplica el cálculo de desaceleración del juego.<br>
			Values (0.01 - 2.0 and above):
			<ul>
				<li>Números más grandes = frenado más fuerte.</li>
				<li>1.0 utiliza el cálculo de la fuerza de frenado sin modificar.</li>
			</ul>
		]] },
		{ name = "fBrakeBiasFront", type = "float", description = [[
			Esta línea controla la distribución de la fuerza de frenado entre los ejes delantero y trasero.<br>
			Values:
			<ul>
				<li>0.0 significa que el eje trasero solo recibe fuerza de frenado.</li>
				<li>1.0 significa que el eje delantero solo recibe fuerza de frenado.</li>
				<li>0.5 da a ambos ejes la misma fuerza de frenado.</li>
				<li>Los valores entre 0.01 y 0.49 significan que el eje trasero recibirá más fuerza de frenado.</li>
				<li>Los valores entre 0.51 y 0.99 significan que los ejes delanteros recibirán más fuerza de frenado que los traseros.</li>
			</ul>
		]] },
		{ name = "fHandBrakeForce", type = "float", description = [[
			Potencia de frenado del freno de mano.<br>
			Values (0.0 and above):
			<ul>
				<li>Números más grandes = frenado más fuerte.</li>
			</ul>
		]] },
		{ name = "fSteeringLock", type = "float", description = [[
			Esto multiplica el cálculo del juego del ángulo de giro del volante mientras está en giro completo. El bloqueo de la dirección está directamente relacionado con la sobreviraje / subviraje.<br>
			Values (0.0 and above):
			<ul>
				<li>Los valores entre 0.1 y 0.2 simularán una distancia entre ejes larga.</li>
				<li>Los valores alrededor de 0.75 y superiores cambiarán extremadamente rápido. Los valores más altos harán que el vehículo gire con facilidad.</li>
			</ul>
		]] },
		{ name = "fTractionCurveMax", type = "float", description = [[
			Agarre del vehículo en las curvas como multiplicador de la fricción de la superficie del neumático.
		]] },
		{ name = "fTractionCurveMin", type = "float", description = [[
			Agarre de aceleración / frenado del vehículo como multiplicador de la fricción de la superficie del neumático.
		]] },
		{ name = "fTractionCurveLateral", type = "float", description = [[
			Forma de la curva de tracción lateral.
		]] },
		{ name = "fTractionSpringDeltaMax", type = "float", description = [[
			Este valor determina a qué distancia sobre el suelo el automóvil perderá tracción.
		]] },
		{ name = "fLowSpeedTractionLossMult", type = "float", description = [[
			Cuánta tracción se reduce a baja velocidad.
			<ul>
				<li>0.0 significa tracción normal. Afecta principalmente al desgaste del automóvil al presionar el gas (W / UP).</li>
				<li>Disminuir el valor causará menos desgaste, menos deslizamiento al inicio.</li>
				<li>Un valor más alto provocará más desgaste.</li>
			</ul>
		]] },
		{ name = "fCamberStiffnesss", type = "float", description = [[
			Este valor modifica el agarre del automóvil cuando está derrapando.
			<ul>
				<li>Más de 0 hacen que el automóvil se deslice en el mismo ángulo en el que lo hace.</li>
				<li>Menos de 0 hace que su coche se sobrevira</li>
				<li>No se recomienda modificarlo para agarre.</li>
			</ul>
		]] },
		{ name = "fTractionBiasFront", type = "float", description = [[
			Determina la distribución de la tracción de adelante hacia atrás.<br>
			Values (0.01 - 0.99):
			<ul>
				<li>0.01 = solo el eje trasero tiene tracción.</li>
				<li>0.99 = solo el eje delantero tiene tracción.</li>
				<li>0.5 = ambos ejes tienen la misma tracción.</li>
				<li>Ingresar un valor de 0.0 o 1.0 hace que el vehículo no tenga tracción.</li>
			</ul>
		]] },
		{ name = "fTractionLossMult", type = "float", description = [[
			Afecta la cantidad de agarre que se cambia al conducir sobre asfalto y barro.
			<ul>
				<li>Los valores más altos hacen que el automóvil responda menos y sea más propenso a deslizarse.</li>
			</ul>
		]] },
		{ name = "fSuspensionForce", type = "float", description = [[
			Afecta la fuerza de la suspensión.<br>
			<ul>
				<li>1 / (Force * Wheels) = Límite inferior de fuerza cero en extensión completa.</li>
			</ul>
		]] },
		{ name = "fSuspensionCompDamp", type = "float", description = [[
			Amortiguación durante la compresión del puntal.
			<ul>
				<li>Bigger values = stiffer.</li>
			</ul>
		]] },
		{ name = "fSuspensionReboundDamp", type = "float", description = [[
			Amortiguación durante el rebote del puntal.
		]] },
		{ name = "fSuspensionUpperLimit", type = "float", description = [[
			Límite visual de qué tan lejos pueden moverse las ruedas hacia arriba o hacia abajo desde su posición original.
		]] },
		{ name = "fSuspensionLowerLimit", type = "float", description = [[
			Límite visual de qué tan lejos pueden moverse las ruedas hacia arriba o hacia abajo desde su posición original.
		]] },
		{ name = "fSuspensionRaise", type = "float", description = [[
			La cantidad que la suspensión levanta la carrocería de las ruedas.
		]] },
		{ name = "fSuspensionBiasFront", type = "float", description = [[
			Este valor determina qué suspensión es más fuerte, delantera o trasera.
			<ul>
				<li>Si el valor es superior a 0.50, la parte delantera es más rígida, cuando está por debajo, la parte trasera es más rígida.</li>
			</ul>
		]] },
		{ name = "fAntiRollBarForce", type = "float", description = [[
			Números más grandes = menos balanceo del cuerpo.
		]] },
		{ name = "fAntiRollBarBiasFront", type = "float", description = [[
			El sesgo entre la parte delantera y trasera de la barra estabilizadora.
			<ul>
				<li>0 = frente</li>
				<li>1 = trasera</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightFront", type = "float", description = [[
			Values (Recommended -0.15 to 0.15):
			<ul>
				<li>Números más grandes = menos reinversiones.</li>
			</ul>
		]] },
		{ name = "fRollCentreHeightRear", type = "float", description = [[
			Este valor modifica la transmisión del peso durante una aceleración entre la parte delantera y trasera. Un valor positivo alto puede hacer que su automóvil pueda hacer caballitos.<br>
			Values (Recommended -0.15 to 0.15):
			<ul>
				<li>Números más grandes = menos reinversiones.</li>
			</ul>
		]] },
		{ name = "fCollisionDamageMult", type = "float", description = [[
			Multiplica el cálculo del juego de daños al vehículo por colisión.
		]] },
		{ name = "fWeaponDamageMult", type = "float", description = [[
			Multiplica el cálculo del juego del daño al vehículo por armas.
		]] },
		{ name = "fDeformationDamageMult", type = "float", description = [[
			Multiplica el cálculo del daño por deformación del juego.
		]] },
		{ name = "fEngineDamageMult", type = "float", description = [[
			Multiplica el cálculo del juego del daño al motor, causando una explosión o falla del motor.
		]] },
		{ name = "fPetrolTankVolume", type = "float", description = [[
			Cantidad de gasolina que se derramará después de dañar el tanque de un vehículo.
		]] },
		{ name = "fOilVolume", type = "float", description = [[
			Cantidad de aceite.
		]] },
		{ name = "fSeatOffsetDistX", type = "float", description = [[
			Value: Conductor> pasajero
		]] },
		{ name = "fSeatOffsetDistY", type = "float", description = [[
			Value: Tronco> capota
		]] },
		{ name = "fSeatOffsetDistZ", type = "float", description = [[
			Value: Tren de aterrizaje> techo
		]] },
		{ name = "nMonetaryValue", type = "integer" },
	},
	Types = {
		["float"] = {
			getter = GetVehicleHandlingFloat,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingFloat(vehicle, _type, fieldName, value + 0.0)
			end,
		},
		["integer"] = {
			getter = GetVehicleHandlingInt,
			setter = function(vehicle, _type, fieldName, value)
				local value = tonumber(value)
				if value == nil then error("value not number") end

				SetVehicleHandlingInt(vehicle, _type, fieldName, math.floor(value))
			end,
		},
		["vector"] = {
			getter = GetVehicleHandlingVector,
			setter = function(vehicle, _type, fieldName, value)
				local axes = 1
				local vector = {}

				for axis in value:gmatch("([^,]+)") do
					vector[axes] = tonumber(axis)
					axes = axes + 1
				end

				for i = 1, 3 do
					if vector[i] == nil then
						error("invalid vector", i)
					end
				end

				SetVehicleHandlingVector(vehicle, _type, fieldName, vector3(vector[1], vector[2], vector[3]))
			end,
		},
	},
}