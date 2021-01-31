describe Fastlane::Actions::OpendirAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The opendir plugin is working!")

      Fastlane::Actions::OpendirAction.run(nil)
    end
  end
end
