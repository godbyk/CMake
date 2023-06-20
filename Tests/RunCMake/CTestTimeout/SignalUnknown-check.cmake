file(GLOB test_xml "${RunCMake_TEST_BINARY_DIR}/Testing/*/Test.xml")
if(NOT test_xml)
  set(RunCMake_TEST_FAILED "Test.xml not found.")
  return()
endif()

file(READ "${test_xml}" test_xml_content)
if(NOT test_xml_content MATCHES "TIMEOUT_SIGNAL_NAME \"NOTASIG\" not supported on this platform\\.")
  set(RunCMake_TEST_FAILED "Test output does not have expected error message.")
  return()
endif()