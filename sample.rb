require 'cvme'

#Choose a path for outputted HTML file.
#For example: html = '/Users/user/desktop/cv.html'
html = '/Users/yorg/desktop/cv.html'

#Change the template if you want to use another template.
#Otherwise leave it as default.
template = 'default'
 
Cvme.create(html, template) do 
  header do 
    user    'Jean Luc Picard'
    email   'jean@gmail.com'
    address '12 Rue de montagne'
    city    'La Barre'
    state   'Franche-Comté'
    country 'France'
    phone   '1286493820'
  end

  group 'Work experience' do  
    entry 'Captain - USS Enterprise-D' do
      date '2364-'
      description 'Captain of the latest galaxy class starship.'
      b1 'Evaded multiple Borg attacks'
      b2 'Succesfully held the the Romulan-Klingon border'
      b3 'Managed relations with Q'
      b4 'Lived on the planet Kataan for 40 years'
    end

    entry 'Lieutenant Commander/Captain - USS Stargazer' do
      date '2333-2356'
      description 'Commanding officer on the USS Stargazer'
      b1 'Defended the Stargazer from over 12 Cardassian attacks'
      b2 'Managed relations with Cardassians, Ferengi, Klingons, and Vulcans'
    end
  end

  group 'Projects' do
    entry 'Simulated Universe' do
      date '2353'
      description 'Helped in the creation of a simulated universe for Dr. Moriarty and his wife'
    end  
    entry 'Archeology: Uncovered a 21st century DSL written in Ruby' do
      date '2355'
      url  'https://github.com/Yorgg/cvme'
    end
  end

  group 'Interests' do  
    entry ' ' do 
      b1 'Fencing'
      b2 'Racquetball'
      b3 'Equine sports'
      b4 'Flute playing'
      b4 'Archeology'
      b5 'Latin'
      b6 'Shakespeare'
    end
  end
end
