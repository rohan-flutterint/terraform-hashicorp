
run "input_failure" {

  variables {
    input = "bcd"
  }

  # While we do expect var.input to fail, we are asking this run block to
  # execute an apply operation. It can't do that because our custom condition
  # fails during the planning stage as well. Our test is going to make sure we
  # add the helpful warning diagnostic explaining this.
  expect_failures = [
    var.input,
  ]

}
