# EupsPkg config file. Sourced by 'eupspkg'

install()
{
	#
	# Pybind11 uses cmake, but fortunately the scripts are easy
	# enough to emulate w/o having to have cmake as a dependency
	#

	clean_old_install

	echo "installing into $PREFIX"
	mkdir -p "$PREFIX/include"
	cp -r include/pybind11 "$PREFIX/include"

	install_ups
}
