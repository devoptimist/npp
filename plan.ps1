$pkg_name="npp"
$pkg_origin="devoptimist"
$pkg_version="7.7"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_source="https://notepad-plus-plus.org/repository/7.x/7.7/${pkg_name}.${pkg_version}.bin.x64.zip"
$pkg_shasum="cd44784beb3b9af53a8c0a68a0ce93be4c4e5e534be039db0495e975e2ff4244"
function Invoke-Unpack {
    Expand-Archive -Path "$HAB_CACHE_SRC_PATH/${pkg_name}.${pkg_version}.bin.x64.zip" -DestinationPath "$HAB_CACHE_SRC_PATH/$pkg_dirname"
}

function Invoke-Install {
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/" $pkg_prefix/bin -Recurse
}