#!./test/libs/bats/bin/bats
load '../libs/bats-support/load'
load '../libs/bats-assert/load'

@test "Should have a correct aws-cli version installed" {
    run docker run --rm aws-toolbox aws --version
    assert_output -p "aws-cli/1.14.18"
}

@test "Should have a correct aws-eb-cli version installed" {
    run docker run --rm aws-toolbox eb --version
    assert_output -p "EB CLI 3.12.1"
}

@test "Should have a correct aws-cli version installed" {
    run docker run --rm aws-toolbox aws --version
    assert_output -p "aws-cli/1.14.18"
}

@test "Should run ecs-deploy test to check if it's properly installed" {
    run docker run --rm aws-toolbox sh -c 'cd ecs-deploy-3.2 && ./run-tests.sh'
    assert_success
}

@test "Should have jq installed since it's dependency for ecs-deploy" {
    run docker run --rm aws-toolbox sh -c 'jq --help'
    assert_output -p "jq - commandline JSON processor [version 1.5]"
}
