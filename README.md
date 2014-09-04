Jobfers
==

Portal de ofertas de trabajo simple. Proyecto utilizado como ejemplo para las clases del curso IIC2513 de la Pontificia Universidad Católica de Chile. Semestre II/2014.

El proyecto utiliza Rails `4.1.5` y Ruby `2.1.2`.

Para correr la aplicación, sólo es necesario ejecutar los siguientes comandos:
```
bundle install
rake db:migrate
rails s
```

Para cargar datos iniciales:
```
rake db:seed
```