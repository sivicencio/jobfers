Jobfers
==
[![Build Status](https://snap-ci.com/sivicencio/jobfers/branch/master/build_image)](https://snap-ci.com/sivicencio/jobfers/branch/master)

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

Testing
--
Los tests de integración fueron hechos con Cucumber. Para correr estos tests:
```
cucumber
```

Los tests unitarios fueron hechos con RSpec. Para correrlos:
```
rspec -f d
```
La opción `-f d` indica que el output debe ser del tipo documentación. Es un atajo de `--format documentation`.