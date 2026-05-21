## オプション
- `-l`: 利用可能な全てのインターフェイスのみを表示する

- 自機IPの調べ方
```bash
# 無線の場合
ipconfig getifaddr en0

# 有線の場合
ipconfig getifaddr en1
```

## ネットワークインターフェイス
### 主なインターフェイス

| 名前 | 種類 | 説明 |
|------|------|------|
| `en0` | Ethernet/Wi-Fi | 通常は Wi-Fi（MacBook系） |
| `en1` | Ethernet/Wi-Fi | 有線LAN or 2枚目の無線 |
| `lo0` | Loopback | ループバック（127.0.0.1）、仮想 |
| `utun0〜` | VPN/Tunnel | VPNや内部トンネル |
| `bridge0` | Bridge | 仮想ブリッジ（仮想マシン等） |
| `awdl0` | AirDrop | AirDrop/Handoff用の無線 |

- ネットワークインターフェイスの一覧
```bash
ipconfig -l
```

- Macなら`networksetup -listallhardwareports`を実行すると全てのネットワークハードウェアの一覧が取得できる
