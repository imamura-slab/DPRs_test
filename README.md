# DPRs_test
複数DPRをやってみる<br>
Arria10のDPR領域は2つまでらしい. これは, <br>
`1.そもそもPR-IPを2つまでしか置けないのか`<br>
`2.PR-IPはいっぱい作れるけど, 同時にDPRできるのが2つまでなのか`<br>
確かめる


# 環境
|ツール    |Quartus Prime Version 18.1.0 Pro Edition|
|:---------|:---------------------------------------|
|評価ボード|DE5a-Net DDR4 Edition                   |
|FPGA      |Intel Arria10 10AX115N2F45E1SG          |


# 実験

## [実験1](./ex1) : PR-IPを複数インスタンス化してみる
- コンパイルエラー
  - Found 2 PR blocks in design -- only one PR block is allowed

## [実験2](./ex2) : PR-IPを複数作成してみる
- コンパイルエラー
  - Found 2 CRC blocks in design -- only one CRC block is allowed
  - Found 2 PR blocks in design -- only one PR block is allowed


## [実験3](./ex3) : 


