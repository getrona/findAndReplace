require('rspec')
require('replace')

describe('String#replace') do

  it('returns a new output while replacing a string') do
    expect("i am content".find_and_replace('am', 'bam')).to(eq('i bam content'))
  end

  it('returns a new output while replacing a string') do
    expect("It will most likely rain".find_and_replace('most', 'always')).to(eq('It will always likely rain'))
  end

  it('returns a new output while replacing a string') do
    expect("There is a show tonight".find_and_replace('show', 'nothing')).to(eq("There is a nothing tonight"))
  end
  it('returns a new output while replacing a string') do
    expect("I am walking my cat to the cathedral".find_and_replace('cat', 'dog')).to(eq("I am walking my dog to the doghedral"))
  end
end
