import 'package:flutter/material.dart';
import './cubit/page_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KeysPanel extends StatelessWidget {
//  KeysPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  //  final PageCubit pageCubit = context.watch()<PageCubit>();
    return BlocBuilder<PageCubit, PageState>(
      builder: (context, state) {
        if (state is PageInitial) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.2,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                child: _oneKey(1),
                              //  onTap: () => {pageCubit.getPressedKey(1)},
                              ),
                              GestureDetector(
                                child: _oneKey(2),
                            //    onTap: () => {pageCubit.getPressedKey(2)},
                              ),
                              GestureDetector(
                                child: _oneKey(3),
                             //   onTap: () => {pageCubit.getPressedKey(3)},
                              ),
                            ]),
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                child: _oneKey(4),
                             //   onTap: () => {pageCubit.getPressedKey(4)},
                              ),
                              GestureDetector(
                                child: _oneKey(5),
                             //   onTap: () => {pageCubit.getPressedKey(5)},
                              ),
                              GestureDetector(
                                child: _oneKey(6),
                             //   onTap: () => {pageCubit.getPressedKey(6)},
                              ),
                            ]),
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                child: _oneKey(7),
                              //  onTap: () => {pageCubit.getPressedKey(7)},
                              ),
                              GestureDetector(
                                child: _oneKey(8),
                             //   onTap: () => {pageCubit.getPressedKey(8)},
                              ),
                              GestureDetector(
                                child: _oneKey(9),
                              //  onTap: () => {pageCubit.getPressedKey(9)},
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ],
            ),
          );
        }

        return Text("Not initial");
      },
    );
  }

  Widget _oneKey(int number) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.amber,
          boxShadow: [
            BoxShadow(
              color: Colors.blueAccent,
              spreadRadius: 5,
              blurRadius: 7,
              //offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          //elevation: 10,
          child: Center(
            child: Text("$number"),
          ),
        ),
      ),
    );
  }
}
/*






  @override
  Widget build(BuildContext context) {
    final PageCubit pageCubit = context.watch()<PageCubit>();
    
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.2,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(0),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(1),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _getButtons(2),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        ],
      ),
    );
  }
*/
