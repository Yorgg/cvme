require_relative 'lib/cvme'

Cvme.create do 
  header do 
    user     'Franky Jones'
    email    'frank@gmail.com'
    address  '8888 10th ave'
    city     'Peace Ville'
    province 'BC'
    phone    '778999888'
  end

  group 'Work experience' do  
    entry 'Cleaner' do
      date '2008-2015'
      description 'Basic cleaning duties at a large ware house Basic cleaning duties at a large ware house
      Basic cleaning duties at a large warehouse Basic cleaning duties at a large warehouse
      Basic cleaning duties at a large warehouse'
      b1  'used windex'
      b2 'waxed floors'
      b3 'ordered inventory'
    end

    entry 'Garbage Man' do
      date '2001-2003'
      description 'picked up garbage'
    end
  end

  group 'Projects' do  
    entry 'CV DSL' do
      date '2015'
      url  "<a href='https://github.com/Yorgg/cvme'>view on github</a>"
      description 'Made a CV DSL: CVme'  
    end
  end

  group 'Interests' do  
    entry ' ' do
      b1 'Swimming'
      b2 'Rubix cubes'
    end
  end
end
