AfterStep('@pause') do
  print "Press Return to continue ..."
  STDIN.getc
end

Before do 
  @user = FactoryGirl.create(:user)
end
