module SchemaOrg
  # https://schema.org/Invoice
  #
  # A statement of the money due for goods or services; a bill.
  class Invoice < Base
    include Mixins::Invoice
  end
end
