############################################################
# IRB Configuration Settings
# Author: Kevin S Kirkup
# Date: Tue 02/03/2009 
############################################################
# Load Libraries
require 'rubygems'
require 'wirble'

# Auto indent
IRB.conf[:AUTO_INDENT] = true

# Tab Completion
require 'irb/completion'
IRB.conf[:USE_READLINE] = true

# Enable Auto-indentation
IRB.conf[:AUTO_INDENT] = true

# Wirble customizations
Wirble.init
Wirble.colorize

# Histories
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:EVAL_HISTORY] = 100
IRB.conf[:HISTORY_PATH] = File::expand_path("~/.irb.history")

# local_methods shows methods that are only available for a given object.
class Object
  def local_methods
    self.methods.sort - self.class.superclass.methods
  end
end

