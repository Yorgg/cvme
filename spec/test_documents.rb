module Cvme
  def document1
  Cvme.create do 
	header do 
      user     'Franky Jones'
      email    'frank@gmail.com'
        address  '8888 10th ave'
        city     'Peace Ville'
        province 'BC'
        phone    '778999888'
      end
      group 'Jobs' do  
        entry 'Cleaner' do
          date '2008-2015'
          description 'Basic cleaning duties'
          bullet 'used windex'
          bullet 'waxed floors'
        end

        entry 'Garbage Man' do
          date '2001-2003'
          description 'picked up garbage'
        end
      end

      group 'Projects' do  
        entry 'CV DSL' do
          date '2015'
          description 'Made a CV DSL'
        end
      end
    end
  end
end