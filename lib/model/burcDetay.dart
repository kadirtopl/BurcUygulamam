import 'package:flutter/material.dart';

import 'burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(



      body:CustomScrollView(

        slivers: [

          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            title: Text(secilenBurc.burcAdi+"Burcu ve özellikleri",style: Theme.of(context).textTheme.headline6,),
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/'+secilenBurc.burcBuyukResim,fit: BoxFit.cover,),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetayi,style: Theme.of(context).textTheme.subtitle1,
                )
              ),
            ),

        ],

      ),
    );
  }
}
