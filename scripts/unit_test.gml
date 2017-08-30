/********************
Test actual value against expected value with a description of the test
 
description - a short statement of what is being tested
expected - the value that is expected of the system
actual - the actual state of the system
*
Example:
unit_test("should not be drawing movement on create", false, draw_movement);  

unit_test("AI hp should decrease by the players damage#when hit#--AI is hit",75,75)
unit_test("--AI is hit--",50,50)
unit_test("--AI is hit--",25,25)

******************/

if global.unit_testing = true
{

    ar = argument_count;
    description = argument[0];
    expected = argument[1];
    actual = argument[2]
    
    run_test();
    
    TEST.description += +"#"+description+"#   expected: "+string(expected)+"#   actual: "+string(actual);
    
    if (expected == actual)
    {   
        pass();
    }
    else
    {
        TEST.failing_tests[TEST.fail_count] = description;
        fail("");
    }

}
