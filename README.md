#CVME

CVME is a simple DSL that generates HTML CV/resume templates.  

The generated HTML page can then be converted to PDF by a web browser or other software.

[Example](https://github.com/Yorgg/cvme/blob/master/sample.rb) and [the html that it generates](https://htmlpreview.github.io/?https://gist.githubusercontent.com/Yorgg/1f578894933a7d2ded47/raw/c86186f21566c2d90f63e9c490bf8761f5ae2b47/CVTemplate.html) 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cvme'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cvme

## Usage


###Setup

After installing the gem, create a new .rb file and require the gem:

`require 'cvme'`

Next, call the create method on the Cvme module:

```ruby
Cvme.create(html, 'default') do 
   
end
```

The **first argument** is the path of the outputted HTML file.
For example: `html = '/Users/user/desktop/cv.html'` would create the file on the user's desktop. 

The **second argument** is the name of the template you want to use.  Leave this as default unless you create your own template in the templates directory:  `lib/cvme/templates`

The **block** is where your code will go.


###Header (personal info)

Your personal information goes in the header block.
There are currently 7 reserved methods (user, email etc...) that you can use as seen below:

```ruby
  header do 
    user    'Jean Luc Picard'
    email   'jean@gmail.com'
    address '12 Rue de montagne'
    city    'La Barre'
    state   'Franche-Comté'
    country 'France'
    phone   '1286493820'
  end
```

You can add more methods in the header.rb file: `lib/cvme/header.rb`

**Note:** these methods are reserved, do not use them outside the header block.  

###Group

Groups create structure for the CV template.

You can name your group whatever you want.  In a CV you would typically see something like this: 

```ruby
group 'Education' do
end

group 'Work experience' do  
end

group 'Projects' do
end

group 'Interests' do
end
```

###Entries 

Entries are items that go inside a group.  

For example:

```ruby
group 'Work experience' do  
  entry 'Captain of the USS Stargazer' do
    date '2333-2356'
    description 'Commanding officer on the USS Stargazer'
    b1 'Defended the Stargazer from over 12 Cardassian attacks'
    b2 'Managed relations with the Cardassians and Klingons' 
  end
end
```

There are *three reserved methods* inside the Entry block:

**date** => the date, or start and end dates of the entry.

**description** => for text  

**b1, b2, b3, b4, b4 (and so on...)** => for bullet points

You can also use any other method name and it will be treated as a description. 


###Full Example:

[the html it generates](https://htmlpreview.github.io/?https://gist.githubusercontent.com/Yorgg/1f578894933a7d2ded47/raw/c86186f21566c2d90f63e9c490bf8761f5ae2b47/CVTemplate.html) 

```ruby
require 'cvme'

html = '/Users/user/desktop/cv.html'
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
      url  "<a href='https://github.com/Yorgg/cvme'>view</a>"
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
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/cvme/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
