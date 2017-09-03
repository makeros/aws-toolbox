#!./test/libs/bats/bin/bats
load '../libs/bats-support/load'
load '../libs/bats-assert/load'

@test "Should have to correct aws-cli version installed" {
    run docker run --rm aws-toolbox aws --version
    assert_output -p "aws-cli/1.11.136"
}

@test "Should run ecs-deploy test to check if it's properly installed" {
    run docker run --rm aws-toolbox sh -c 'cd ecs-deploy-3.2 && ./run-tests.sh'
    assert_success
}
