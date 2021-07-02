import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Shopping App",
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate Chips')
      ]
    )));
}

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({this.product, this.inCart, this.onCartChanged}) : super(key: ObjectKey(product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) => inCart ? Colors.black54 : Theme.of(context).primaryColor;

  TextStyle _getTextStyle(BuildContext context) => inCart ? TextStyle(color: Colors.black54, decoration: TextDecoration.lineThrough) : null;

  @override
  Widget build(BuildContext ctx) {
    print('building shopping list item ${product.name}');
     return ListTile(
        onTap: () => onCartChanged(product, inCart),
        leading: CircleAvatar(backgroundColor: _getColor(ctx), child: Text(product.name[0])),
        title: Text(product.name, style: _getTextStyle(ctx))
      );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();

}

class _ShoppingListState extends State<ShoppingList> {
  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool inCart) =>
    setState(() => inCart ? _shoppingCart.remove(product) : _shoppingCart.add(product));

  @override
  void didUpdateWidget(ShoppingList old)
  {
    super.didUpdateWidget(old);
    print('updated shopping cart');
  }

  @override
  Widget build(BuildContext context) {
    print('building shopping list');
    return Scaffold(
      appBar: AppBar(title: Text('Shopping List')),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: widget.products.map((Product product) => ShoppingListItem(product: product, inCart: _shoppingCart.contains(product), onCartChanged: _handleCartChanged)).toList()
      )
    );
  }
}

