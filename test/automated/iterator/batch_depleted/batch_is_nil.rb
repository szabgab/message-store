require_relative '../../automated_init'

context "Iterator" do
  context "Batch Depleted" do
    context "Batch in Nil" do
      iterator = Controls::Iterator.example

      iterator.batch = nil

      batch_depleted = iterator.batch_depleted?

      test "Batch is depleted" do
        assert(batch_depleted)
      end
    end
  end
end
