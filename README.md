# MoxIssue

Showcasing an issue we're having with `Mox` for better discussion. Actually wanted to show case a different issue but then this popped up :D

## Actual

Run `mix test` - there are 2 failing tests:

```
  1) test it woofs (MoxTest)
     test/mox_test.exs:8
     ** (Mox.UnexpectedCallError) no expectation defined for BarkMock.bark/0 in process #PID<0.189.0> with args []
     code: assert BarkMock.bark() == "wooofff"
     stacktrace:
       (mox) lib/mox.ex:599: Mox.__dispatch__/4
       test/mox_test.exs:9: (test)



  2) test and woof again (MoxTest)
     test/mox_test.exs:17
     ** (Mox.UnexpectedCallError) no expectation defined for BarkMock.bark/0 in process #PID<0.191.0> with args []
     code: assert BarkMock.bark() == "wooofff"
     stacktrace:
       (mox) lib/mox.ex:599: Mox.__dispatch__/4
       test/mox_test.exs:18: (test)

.

Finished in 0.05 seconds
3 tests, 2 failures
```

## Expected

Because of `Mox.stub_with(BarkMock, BarkImpl)` it should wooofff and therefore tests should pass.
