require 'spec_helper'

describe "Welcome-Controller" do
  context 'PDF' do
    it "Shows a PDF when click on link" do
      visit "/welcome.pdf"
      ext_analysis = PDF::Inspector::Text.analyze(page.body)
      expect(ext_analysis.strings).to be_include("Test Prawn + Rspec")
    end
  end
end
