# Copyright (c) 2017 github/ooxi
#     https://github.com/ooxi/mini-cross
#
# This software is provided 'as-is', without any express or implied warranty. In
# no event will the authors be held liable for any damages arising from the use
# of this software.
#
# Permission is granted to anyone to use this software for any purpose,
# including commercial applications, and to alter it and redistribute it freely,
# subject to the following restrictions:
#
#  1. The origin of this software must not be misrepresented; you must not claim
#     that you wrote the original software. If you use this software in a product,
#     an acknowledgment in the product documentation would be appreciated but is
#     not required.
#
#  2. Altered source versions must be plainly marked as such, and must not be
#     misrepresented as being the original software.
#
#  3. This notice may not be removed or altered from any source distribution.

require 'pathname'

require_relative 'configuration-type'



# A {@link ConfigurationType} with directory reference.
class Configuration

	def initialize(directory, type)
		raise "`directory' must be a pathname" unless directory.kind_of?(Pathname)
		raise "`type' must be a ConfigurationType" unless type.kind_of?(ConfigurationType)

		@directory = directory
		@type = type
	end



	def yaml_file
		return @type.yaml_file @directory
	end


	def context_directory
		return @type.context_directory @directory
	end


	def base_directory
		return @type.base_directory @directory
	end

end

