import 'package:bloc/bloc.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_event.dart';
import 'package:catering_admin/page/admin_menu/dashboard/bloc/dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  @override
  DashboardState get initialState => DashboardInitial();

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {}
}
