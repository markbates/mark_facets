require 'spec_helper'

describe String do
  
  describe 'cast_from' do
    
    it 'should cast objects to String' do
      String.cast_from(10.0).should == '10.0'
    end
    
  end
  
  describe 'random' do
    
    it 'should return a randomly generated string' do
      x = String.random
      x.size.should == 20
      x.should match(/^[a-z\d]+$/i)
    end
    
    it 'should return a randomly generated string of a certain size' do
      x = String.random(5)
      x.size.should == 5
      x.should match(/^[a-z\d]+$/i)
    end
    
  end
  
  describe 'to_bool' do
    
    it 'should return false if the string is a false string' do
      %w{n N no NO No f F false FALSE False nay NAY Nay}.each do |w|
        w.to_bool.should be_false
      end
    end
    
    it 'should return true for any string that isnt a false string' do
      %w{y Y yes YES Yes t T true TRUE True aye AYE aye poop Fart}.each do |w|
        w.to_bool.should be_true
      end
    end
    
  end
  
  describe 'to_boolean' do
    
    it 'should alias to_bool' do
      'y'.to_boolean.should == 'y'.to_bool
      'n'.to_boolean.should == 'n'.to_bool
    end
    
  end
  
  describe 'md5_hash' do
    
    it 'should return an md5 hash of the String' do
      'bob@example.com'.md5_hash.should == '4b9bb80620f03eb3719e0a061c14283d'
    end
    
  end
  
  describe 'hexdigest' do
    
    it 'should return a Digest::SHA1.hexdigest version of the String' do
      'Hello World'.hexdigest.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
    end
    
  end
  
  describe 'hexdigest!' do
    
    it 'should destructively replace the string with a Digest::SHA1.hexdigest version' do
      x = 'Hello World'
      x.hexdigest!.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
      x.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
    end
    
  end
  
  describe "methodize" do
    
    it "should convert the String into a Ruby method friendly String" do
      "Who's your daddy?".methodize.should == "who_s_your_daddy?"
      "1@%$^&foo**((*))_bar?".methodize.should == "foo_bar?"
      "1@%$^&foo**((*))_bar&&&sdfsdf____".methodize.should == "foo_bar_sdfsdf"
      "\nfoo_\tbar".methodize.should == "foo_bar"
      "foo?bar".methodize.should == "foo_bar"
      "foo!bar".methodize.should == "foo_bar"
      "foo=bar".methodize.should == "foo_bar"
      "foo-bar".methodize.should == "foo_bar"
      "foo 123".methodize.should == "foo_123"
      "foo!!!!!!!!!!!123$$$$$$$$$".methodize.should == "foo_123"
      %{
      Littera gothica quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis. Adipiscing elit sed; diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat? Decima et quinta decima eodem modo typi qui nunc nobis videntur parum clari fiant sollemnes in? Nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum typi! Blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla?
    
      Consequat duis autem vel eum iriure dolor in hendrerit in vulputate velit esse. Ut laoreet dolore magna aliquam erat volutpat ut wisi enim ad minim veniam quis nostrud exerci. Ea commodo molestie consequat vel illum dolore eu feugiat nulla facilisis at vero eros et. Placerat facer possim assum typi non habent claritatem insitam? Modo typi qui nunc nobis videntur parum clari fiant sollemnes in. Elit sed diam nonummy nibh euismod tincidunt tation ullamcorper suscipit lobortis nisl ut aliquip ex accumsan. Littera gothica quam nunc putamus parum claram anteposuerit litterarum formas humanitatis per seacula, quarta decima et.
    
      Quinta decima eodem modo typi qui nunc nobis videntur parum clari fiant sollemnes in. Hendrerit in vulputate velit esse molestie consequat vel illum dolore eu. Claram anteposuerit litterarum formas humanitatis per seacula quarta decima et. Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit. Zzril delenit augue duis dolore te feugait nulla facilisi nam? Processus dynamicus qui sequitur mutationem consuetudium lectorum mirum est notare quam. Vel eum iriure dolor in praesent luptatum liber tempor cum soluta nobis eleifend option congue. Quod ii legunt saepius claritas est etiam; littera gothica quam nunc putamus parum?
    
      In iis qui facit eorum claritatem Investigationes demonstraverunt lectores legere me. Veniam quis nostrud exerci tation ullamcorper suscipit lobortis. Dolor sit amet consectetuer adipiscing elit sed diam, nonummy nibh euismod tincidunt ut laoreet! Iusto odio dignissim, qui blandit praesent luptatum zzril! Quod mazim placerat facer possim assum typi non habent claritatem insitam est usus legentis lius quod!
    
      }.methodize.should == "littera_gothica_quam_nunc_putamus_parum_claram_anteposuerit_litterarum_formas_humanitatis_adipiscin?"
      "foo =".methodize.should == "foo="
      "12345fo!!!!@@@@@@@@[[[]]]o%%%~~~`````=".methodize.should == "fo_o="
      lambda{ "!!!!!!!!!!!!!!!!".methodize }.should raise_error(NameError)
      lambda{ "????????????????".methodize }.should raise_error(NameError)
      lambda{ "1234567890".methodize }.should raise_error(NameError)
      lambda{ "".methodize }.should raise_error(NameError)
    end
    
  end
  
end
