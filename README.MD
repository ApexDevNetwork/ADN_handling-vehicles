## Descripción
Este recurso para FiveM permite editar en vivo el handling de los vehículos y realizar un seguimiento básico del rendimiento, incluyendo velocidad máxima, aceleración y desaceleración.

## Instalación
Simplemente añade el recurso a tu server.cfg con:

```ruby
ensure adn_handling-vehicles
```
## Editor
Pulsa Alt Izquierdo mientras estás dentro de un vehículo para abrir el menú. También puedes cambiar esta tecla desde los ajustes de mapeo de teclas en FiveM.

Haz clic en las casillas de entrada del valor que deseas modificar y cámbialo directamente. El handling del vehículo se actualizará al instante conforme escribes. Si pasas el cursor sobre los campos, verás una descripción de cada uno.
![LiveHandling1](https://user-images.githubusercontent.com/8594390/113525001-6b17b380-9580-11eb-8411-5a7076a4514e.png)

Puedes guardar el handling haciendo clic en "Copiar Handling" en la parte superior del menú. Luego deberás pegarlo sobre el archivo handling.meta del vehículo correspondiente. Asegúrate de reemplazar solo desde mass hasta monetary value.

## Estadísticas
En la parte superior central de la pantalla verás algunas estadísticas del vehículo:

Velocidad máxima – La mayor velocidad alcanzada, en millas por hora (mph).
Aceleración máxima – Valor representativo de qué tan rápido acelera el vehículo.
Desaceleración máxima – Valor representativo de qué tan rápido frena el vehículo.

Estas estadísticas pueden verse afectadas por colisiones o caídas. Usa el botón "Reset" para restablecerlas.
![LiveHandling2](https://user-images.githubusercontent.com/8594390/113525004-6e12a400-9580-11eb-8ad2-a5fd70aef41d.png)

## Mas info y wiki
https://github.com/ApexDevNetwork/ADN_handling-vehicles
https://github.com/ApexDevNetwork/ADN_handling-vehicles/wiki

## Créditos
Gracias al post de V4D3R en 5Mods por la documentación sobre campos de handling.meta:
https://forums.gta5-mods.com/topic/3842/tutorial-handling-meta

Gracias a James Roll por el scritp inicial