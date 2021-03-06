module Cvme
  def document1
    Cvme.create('test_cv.html', 'default') do 
      header do 
        user     'Franky Jones'
        email    'frank@gmail.com'
        address  '8888 10th ave'
        city     'Peace Ville'
        state    'BC'
        phone    '778999888'
      end

      group 'Jobs' do  
        entry 'Cleaner' do
          date '2008-2015'
          description 'Basic cleaning duties'
          b1 'used windex'
          b2 'waxed floors'
        end

        entry 'Garbage Man' do
          date '2001-2003'
          description 'picked up garbage'
          url 'www.test.com'
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