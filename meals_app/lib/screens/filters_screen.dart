import 'package:flutter/material.dart';
import 'package:meals_app/widgets/custom_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const route = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  
  Widget _buildSwitchListTile(bool value, String title, String subtitle, Function updateValue){
    return SwitchListTile(
      value: value,
      subtitle: Text(subtitle),
      onChanged: updateValue,
      title: Text(title),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: CustomDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('Adjust your meal selection', style: Theme.of(context).textTheme.title),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(_glutenFree, 'Gluten-free', 'Only include gluten-free meals', (newValue){
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTile(_lactoseFree, 'Lactose-free', 'Only include lactose-free meals', (newValue){
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitchListTile(_vegetarian, 'Vegetarian', 'Only include vegetarian meals', (newValue){
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitchListTile(_vegan, 'Vegan', 'Only include vegan meals', (newValue){
                  setState(() {
                    _vegan = newValue;
                  });
                }),
              ],
            ),
          )
        ],
      )
    );
  }
}
