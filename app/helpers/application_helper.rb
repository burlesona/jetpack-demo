require 'jetpack/helper'

# Loads jetpack helper methods from lib, which
# makes it easier to keep them synced with the
# rails gem version of jetpack.
module ApplicationHelper
  include Jetpack::Helper
end
