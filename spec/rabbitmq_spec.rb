require File.expand_path('code/rabbitmq')

describe Rabbitmq do
  describe '.pub_sub_message' do
    %w[Jason Motti Ganesh Shiju Jongmyung].each do |guest|
      context "#{guest} book a reservation" do
        subject { Rabbitmq.pub_sub_message(guest) }

        it { is_expected.to eq "Received #{guest} Reservation" }
      end
    end
  end
end
