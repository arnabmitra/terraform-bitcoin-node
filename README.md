# terraform-bitcoin-node

This will set up a Bitcoin Node on Google Cloud Platform using Terraform

after startup 
 bitcoin-cli -testnet getblockcount


bitcoin-cli -testnet getblockchaininfo
```
{
  "chain": "test",
  "blocks": 682088,
  "headers": 1976910,
  "bestblockhash": "00000000000035d1ced14ba1c76cf504eef0751ca0e786900f66a2351353c28c",
  "difficulty": 262144,
  "mediantime": 1454263446,
  "verificationprogress": 0.1537869488134436,
  "initialblockdownload": true,
  "chainwork": "000000000000000000000000000000000000000000000007693865a4ec93e493",
  "size_on_disk": 5818179464,
  "pruned": false,
  "softforks": {
    "bip34": {
      "type": "buried",
      "active": true,
      "height": 21111
    },
    "bip66": {
      "type": "buried",
      "active": true,
      "height": 330776
    },
    "bip65": {
      "type": "buried",
      "active": true,
      "height": 581885
    },
    "csv": {
      "type": "buried",
      "active": false,
      "height": 770112
    },
    "segwit": {
      "type": "buried",
      "active": false,
      "height": 834624
    },
    "taproot": {
      "type": "bip9",
      "bip9": {
        "status": "defined",
        "start_time": 1619222400,
        "timeout": 1628640000,
        "since": 0,
        "min_activation_height": 0
      },
      "active": false
    }
  },
  "warnings": ""
}
```
