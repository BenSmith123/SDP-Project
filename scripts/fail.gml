/**
* Track that the test failed
*
* description - All relevent debugging info (SHOULD BE PASSED FROM ASSERTION)
*
*/
//description = argument[0];

TEST.result[TEST.test_count] = c_red;
TEST.fail_count += 1;
//TEST.test_lines += "#NOT OK#";
TEST.test_lines += description;