// パラメーターと変数の定義
param virtualNetworkName string = 'examplevnet'
param addressPrefix string = '10.0.0.0/16'
param subnet1Name string = 'subnet-1'
param subnet1Prefix string = '10.0.0.0/24'
param subnet2Name string = 'subnet-2'
param subnet2Prefix string = '10.0.1.0/24'

// 仮想ネットワークの作成
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: subnet1Name
        properties: {
          addressPrefix: subnet1Prefix
        }
      }
      {
        name: subnet2Name
        properties: {
          addressPrefix: subnet2Prefix
        }
      }
    ]
  }
}
