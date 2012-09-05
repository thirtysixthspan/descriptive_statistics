module Enumerable
  include DescriptiveStatistics

  # This is necessary because otherwise objects which
  # have already included Enumerable (such as Array) won't
  # be able to access DescriptiveStatistics's methods.
  # It is an evil hack though :-/
  DescriptiveStatistics.instance_methods.each do |m|
    define_method(m, DescriptiveStatistics.instance_method(m))
  end
end
