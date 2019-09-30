ExUnit.start()

Mox.defmock(BarkMock, for: Bark)
Mox.stub_with(BarkMock, BarkImpl)

IO.puts("test helper is executed")
