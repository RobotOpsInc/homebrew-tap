# Robot Ops Homebrew Tap

Homebrew formulae for [Robot Ops](https://robotops.com) open source tools.

## Install

```sh
brew tap robotopsinc/tap
brew install rosql
```

Or in one line:

```sh
brew install robotopsinc/tap/rosql
```

## Tools

| Formula | Description | Docs |
|---------|-------------|------|
| `rosql` | The query language for ROS2 telemetry data | [rosql.org/docs](https://rosql.org/docs) |

## Usage

```sh
# Query local Parquet telemetry files
rosql query "FROM traces WHERE status = 'ERROR' SINCE 1 hour ago" \
  --backend parquet \
  --url ./telemetry/

# Compile to SQL (no database required)
rosql compile "FROM traces WHERE duration > 500 ms" --backend postgres

# Validate query syntax
rosql validate "FROM traces WHERE status = 'ERROR'"
```

Full CLI reference: [rosql.org/docs/cli](https://rosql.org/docs/cli)

## Updates

```sh
brew update && brew upgrade rosql
```

## Issues

- CLI bugs → [RobotOpsInc/rosql](https://github.com/RobotOpsInc/rosql/issues)
- Formula bugs → [RobotOpsInc/homebrew-tap](https://github.com/RobotOpsInc/homebrew-tap/issues)
