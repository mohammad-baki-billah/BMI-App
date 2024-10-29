import 'package:flutter/material.dart';

class RakButton extends StatelessWidget {
  final IconData icon;
  final String btnName;
  final VoidCallback onPress;
  const RakButton(
      {super.key,
      required this.icon,
      required this.btnName,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child:  Container(
          height: 50,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
                
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color:  Theme.of(context).colorScheme.primaryContainer,
                    
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                btnName,
                style: TextStyle(
                  fontSize: 18,
                  color:  Theme.of(context).colorScheme.primaryContainer,
                      
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
