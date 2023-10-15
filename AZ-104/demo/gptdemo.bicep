// 仮想ネットワーク名
param virtualNetworkName string = 'examplevnet'

// 仮想ネットワークのアドレスプレフィックス
param virtualNetworkAddressPrefix string = '10.0.0.0/16'

// サブネット名とアドレスプレフィックスの配列
param subnets array = [
  {
    name: 'subnet-1'
    addressPrefix: '10.0.0.0/24'
  }
  {
    name: 'subnet-2'
    addressPrefix: '10.0.1.0/24'
  }
]

// リソースグループの場所
param location string = resourceGroup().location

// 仮想ネットワークリソースを作成
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        virtualNetworkAddressPrefix
      ]
    }
    // サブネットリソースを作成
    subnets: [for subnet in subnets: {
      name: subnet.name
      properties: {
        addressPrefix: subnet.addressPrefix
      }
    }]
  }
}
