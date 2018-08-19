# EupsPkg config file. Sourced by 'eupspkg'

config()
{
    (rm -rf build && mkdir build && cd build && cmake -DPYTHON_EXECUTABLE:FILEPATH=$(command -v python) -DCMAKE_INSTALL_PREFIX=$PREFIX ..)
}

build()
{
    (cd build && make)
}

install()
{
    clean_old_install
    (cd build && make install)
    install_ups
}
