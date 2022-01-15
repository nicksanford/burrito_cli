# BurritoCli

This is a personal exploration of how to use [burrito](https://github.com/burrito-elixir/burrito)
to package elixir as a cli tool.

This is just an example wrapper around [req](https://hexdocs.pm/req/Req.html) and is intended to be an easy jumping off point for future projects.

## Install

```
brew install p7zip zig gzip
git clone git@github.com:nicksanford/burrito_cli.git
cd burrito_cli
mix do deps.get, deps.compile, compile
```

## Build

```
MIX_ENV=prod mix release --overwrite
```

## Run

`burrito_out/burrito_cli_<PLATFORM> https://api.github.com/repos/elixir-lang/elixir  description`