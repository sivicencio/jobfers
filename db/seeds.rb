# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Company.find_or_create_by(name: 'Acid') do |company|
  company.description = 'Innovation & Technology. Software a la medida.'
  company.website = 'http://acid.cl'
  company.twitter = 'acid_team'
  company.github = 'acidlabs'
end

Company.find_or_create_by(name: 'Hop.in') do |company|
  company.description = 'Data driven innovation lab. Based in California and Chile.'
  company.website = 'http://hop.in'
  company.twitter = 'agodoy_21'
  company.github = 'HopIn'
end

Company.find_or_create_by(name: 'Groupon') do |company|
  company.description = 'Groupon es un portal de ventas colectivas que a diario ofrece una selección de cosas y productos para hacer, comer, ver y muchísimos otros verbos que también terminan en “ir” y “ar”.'
  company.website = 'http:/groupon.cl/jobs'
end

Company.find_or_create_by(name: 'Continuum') do |company|
  company.description = 'Desarrolladores y diseñadores apasionados por hacer realidad ideas y proyectos digitales.'
  company.website = 'http://www.continuumhq.co/'
  company.twitter = 'continuumhq'
  company.github = 'continuum'
end

skills =  [
            'Ruby',
            'Java',
            'Frontend',
            'Backend',
            'Software Engineering',
            'JavaScript',
            'Ruby on Rails',
            '.NET',
            'Scrum',
            'SASS',
            'REST',
            'AJAX',
            'PostgreSQL',
            'MySQL',
            'Python'
          ]
skills.each do |skill|
  Skill.find_or_create_by(title: skill)
end

offer_titles = [
                'Senior Web Developer',
                'Junior Web Developer',
                'Intern',
                'Ruby on Rails Developer',
                'Frontend Developer',
                'Software Engineer',
                'Full-stack Web developer',
                'Java Engineer',
                'Angular JS Developer',
                'Ember.js Developer'
              ]
modes = ['Full time', 'Part time', 'Freelance', 'Internship']

100.times do |i|
  Offer.find_or_create_by(id: i) do |offer|
    offer.title = offer_titles.sample
    offer.description = i.to_s + ') Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eros eros, mollis non augue quis, pellentesque ornare massa. Suspendisse at est mollis, placerat urna vel, eleifend augue. In vel massa at mauris gravida malesuada. In vitae sem eros. Cras vitae justo a elit venenatis suscipit vitae quis arcu. Quisque sit amet ornare massa. Mauris erat libero, ultricies id bibendum in, iaculis id diam. Cras feugiat urna tellus, vel convallis dolor aliquet a. Cras porttitor diam dui. Maecenas non enim justo. Sed fringilla lorem nec nibh molestie aliquet. Duis sagittis arcu sed ipsum fringilla, eu scelerisque lorem maximus. Phasellus condimentum commodo porttitor. Morbi finibus sollicitudin felis et fermentum. Cras orci dolor, imperdiet a dictum quis, convallis vitae tortor. Nullam ultrices nunc velit, in gravida arcu porta a.'
    offer.mode = modes.sample
    offer.salary = (Random.rand(100000...1500000)/50000*50000).to_f
    offer.company = Company.find(Random.rand(1...4))
  end
end