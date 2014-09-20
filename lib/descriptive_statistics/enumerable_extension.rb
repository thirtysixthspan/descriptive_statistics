module Enumerable
  include DescriptiveStatistics

  # This is necessary because otherwise objects which
  # have already included Enumerable (such as Array) won't
  # be able to access DescriptiveStatistics's methods.
  # This is known as Dynamic Module Include Problem.
  ObjectSpace.each_object(::Module).select { |mod|
    mod.include? self
  }.each { |mod|
    mod.module_eval { include DescriptiveStatistics }
  }
end
