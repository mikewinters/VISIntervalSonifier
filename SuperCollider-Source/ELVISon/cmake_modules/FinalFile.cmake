MACRO(CREATE_FINAL_FILE _filename)
  FILE(WRITE ${_filename} "//autogenerated file\n")
    FOREACH (_current_FILE ${ARGN})
      FILE(APPEND ${_filename} "#include \"${_current_FILE}\"\n")
    ENDFOREACH (_current_FILE)
ENDMACRO(CREATE_FINAL_FILE _filename)
