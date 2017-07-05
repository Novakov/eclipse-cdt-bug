set(NAME hello_world)

set(SOURCES
    main.cpp
)

add_executable(${NAME} ${SOURCES})

set_target_properties(${NAME} PROPERTIES LINK_FLAGS "-specs=nano.specs -specs=nosys.specs")

target_link_libraries(${NAME} settings verifier)