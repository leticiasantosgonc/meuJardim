import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Home'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).accent4,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
              child: FlutterFlowIconButton(
                buttonSize: 40.0,
                hoverIconColor: FlutterFlowTheme.of(context).iconsHover,
                icon: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).icons,
                  size: 15.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 45.0, 0.0),
                  child: FlutterFlowIconButton(
                    buttonSize: 40.0,
                    hoverIconColor: FlutterFlowTheme.of(context).iconsHover,
                    icon: FaIcon(
                      FontAwesomeIcons.solidClock,
                      color: FlutterFlowTheme.of(context).icons,
                      size: 18.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).icons,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    buttonSize: 40.0,
                    hoverIconColor: FlutterFlowTheme.of(context).iconsHover,
                    icon: Icon(
                      Icons.favorite,
                      color: FlutterFlowTheme.of(context).icons,
                      size: 20.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                child: FlutterFlowIconButton(
                  buttonSize: 40.0,
                  hoverIconColor: FlutterFlowTheme.of(context).iconsHover,
                  icon: Icon(
                    Icons.logout,
                    color: FlutterFlowTheme.of(context).icons,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('HOME_PAGE_logout_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_auth');
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Entrar', context.mounted);
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
