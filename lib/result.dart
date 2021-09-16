import 'package:flutter/material.dart';

class Result  extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore,this.resetHandler); 
 

  String get resultphase{
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome';
    }else if(resultScore <= 12)
    {
      resultText = 'You are a Nice person';

    }else if(resultScore <=16)
    {
      resultText ='You are a Strange Person';
    }
    else{
      resultText = 'You are so Bad';
    }
    
    
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
                child: 
                Column(children: <Widget>[Text(
                  resultphase,
                  style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(onPressed: resetHandler, child: Text('Restart Test'))
                //FlatButton(onPressed: resetHandler, child: Text('Restart Test'))
                ],
                ),
                
              );
  }
}