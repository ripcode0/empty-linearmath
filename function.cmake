function(print_target_info target_name)
    if(TARGET ${target_name})
        message("Target: ${target_name}")
        
        # 출력할 속성 목록
        foreach(prop
            LOCATION
            INCLUDE_DIRECTORIES
            LINK_LIBRARIES
            COMPILE_DEFINITIONS
            COMPILE_OPTIONS
            COMPILE_FEATURES
            LINK_FLAGS
            LINK_OPTIONS
        )
            # 속성 값 조회
            get_target_property(value ${target_name} ${prop})
            if(NOT value)
                set(value "<not set>")
            endif()
            message("  ${prop}: ${value}")
        endforeach()
    else()
        message(WARNING "Target '${target_name}' does not exist.")
    endif()
endfunction()