set(TARGET_ARCH_NAME $ENV{TARGET_BUILD_ARCH})

macro(set_cache_value)
  set(${ARGV0} ${ARGV1} CACHE STRING "Result from TRY_RUN" FORCE)
endmacro()