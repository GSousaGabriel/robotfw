You can run tests using robot -d crm/Results -N "all tests" -v TEST: "DA TEST" -v TEST_MINE: yes -t "Should be able to log in" -i Smoke crm/Tests.

Where -d is the directory of the results of the tests followed by its path.
Where -N is the name of the tests log.
Where -v is the variables you want to use.(can add multiples -v)
Where -t is the description of the test you want to run.
Where -i is the tags you want to test.(can add multiples -i)
And the last path is where the tests files are. You can also specify the file by adding it to the path crm/Tests/test.robot