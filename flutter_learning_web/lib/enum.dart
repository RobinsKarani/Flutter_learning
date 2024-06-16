enum ShippingMethod { standard, express, overnight }

void main() {
  ShippingMethod selectedMethod = ShippingMethod.express;

  print('Selected Shipping Method: $selectedMethod');
  // Output: Selected Shipping Method: ShippingMethod.express

  double calculateShippingCost(ShippingMethod method) {
    switch (method) {
      case ShippingMethod.standard:
        return 5.99;
      case ShippingMethod.express:
        return 9.99;
      case ShippingMethod.overnight:
        return 19.99;
    }
  }

  double shippingCost = calculateShippingCost(selectedMethod);
  print('Shipping Cost: $shippingCost');
  // Output: Shipping Cost: 9.99
}