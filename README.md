# Pooltest

```
➜  pooltest git:(main) iex -S mix run
Erlang/OTP 24 [erts-12.3.2] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1]

Compiling 1 file (.ex)
Worker started: #PID<0.219.0>
Worker started: #PID<0.220.0>
Worker started: #PID<0.221.0>
Worker started: #PID<0.222.0>
Worker started: #PID<0.223.0>
Interactive Elixir (1.13.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> :erlpool.pid(:my_pool)
#PID<0.219.0>
iex(2)> :erlpool.pid(:my_pool)
#PID<0.220.0>
iex(3)> :erlpool.pid(:my_pool)
#PID<0.221.0>
iex(4)> :erlpool.pid(:my_pool)
#PID<0.222.0>
iex(5)> :erlpool.pid(:my_pool)
#PID<0.223.0>
iex(6)> :erlpool.pid(:my_pool)
#PID<0.219.0>
iex(7)> :erlpool.pid(:my_pool)
#PID<0.220.0>
iex(8)>
```
