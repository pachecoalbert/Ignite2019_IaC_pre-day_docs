#Configure Network Interface
resource "azurerm_network_interface" "tf_pre-day" {
  name                = "tfignitepredaynic"
  location            = var.location
  resource_group_name = var.rg

  ip_configuration {
    name                          = "tfpredaynicconfig"
    subnet_id                     = azurerm_subnet.predayvnet.subnets[0]
    private_ip_address_allocation = "Dynamic"
  }
}