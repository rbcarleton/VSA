VSA
===

The Viable System Agent, or VSA is a software implementation of the
Viable System Model (VSM), a model for autonomous systems developed
by Stafford Beer. The VSA provides structure, communications,
auditing and alerting as defined in the VSM. The VSA is used to
represent both viable systems and subordinate viable systems. This
is called recursion in the VSM. The VSA is intended to facilitate
creating and managing autonomous software systems.

Testing this distribution:

1) Change directories into the directory containing the distribution.
You should see the file, Rakefile in the top of the distribution.

2) Type the "rake" command. This will run all the unit testing for
the distribution.

Ruby 1.8 is not supported. Development is being done in Ruby 2.0.
The target platforms are 1.9, 2.0 and 2.1. Report test failures to
rbc@rbcarleton.com

Interactive experimentation:

You can use the "irb" read–eval–print loop (REPL) to interactively
experiment with the VSA. Consider the following transcript. You
need to change directories into the directory containing the
distribution prior to running these commands.

<
$ irb
irb(main):001:0> require_relative "VSA"
=> true
irb(main):002:0> myvsa = VSA.new
=> #<VSA:0x007fe05881e530 @my_executive=#<VSAExecutive:0x007fe05881e508>, @my_planner=#<VSAPlanner:0x007fe05881e4e0>, @my_manager=#<VSAManager:0x007fe05881e4b8>>
irb(main):003:0> myvsa.cost_center = false
=> false
irb(main):004:0> myvsa.actuality = 200.0
=> 200.0
irb(main):005:0> myvsa.capability = 500.0
=> 500.0
irb(main):006:0> myvsa.potentiality = 1000.0
=> 1000.0
irb(main):007:0> myvsa.actuality
=> 200.0
irb(main):008:0> myvsa.capability
=> 500.0
irb(main):009:0> myvsa.potentiality
=> 1000.0
irb(main):010:0> myvsa.cost_center
=> false
irb(main):011:0> myvsa.productivity
=> 0.4
irb(main):012:0> myvsa.latency
=> 0.5
irb(main):013:0> myvsa.performance
=> 0.2
irb(main):014:0>
>
