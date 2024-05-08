export EXECUTABLE="biz"
export BECH32_PREFIX="biz"
export ROLLAPP_CHAIN_ID="biz_808080-1"
export KEY_NAME_ROLLAPP="rol-user"
export BASE_DENOM="abiz"
export DENOM=$(echo "$BASE_DENOM" | sed 's/^.//')
export MONIKER="$ROLLAPP_CHAIN_ID-sequencer"

export ROLLAPP_HOME_DIR="datax"
export ROLLAPP_SETTLEMENT_INIT_DIR_PATH="${ROLLAPP_HOME_DIR}/init"
export SKIP_EVM_BASE_FEE=false # optional, removes fees on the rollapp
