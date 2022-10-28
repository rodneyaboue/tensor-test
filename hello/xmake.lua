add_rules("mode.debug", "mode.release")

option("tensorflow")
set_showmenu(true)
add_includedirs("$(tensorflow)/include", {public = true})
add_linkdirs("$(tensorflow)/lib")
add_links("tensorflow")
option_end()

target("hello")
    set_kind("binary")
    add_files("src/*.c")
    add_options("tensorflow")
