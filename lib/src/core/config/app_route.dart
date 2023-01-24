import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/blocs/auth/authentication/authentication_bloc.dart';
import 'package:pasien/src/presentation/blocs/auth/forgot/forgot_password_bloc.dart';
import 'package:pasien/src/presentation/blocs/auth/login/login_bloc.dart';
import 'package:pasien/src/presentation/blocs/auth/register/register_bloc.dart';
import 'package:pasien/src/presentation/blocs/auth/register/verification/register_verification_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/address/address_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/family/family_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/family/form/family_form_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/insurance/form/insurance_form_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/insurance/insurance_bloc.dart';
import 'package:pasien/src/presentation/blocs/profile/personal_data/personal_data_bloc.dart';
import 'package:pasien/src/presentation/views/auth/change_password_view.dart';
import 'package:pasien/src/presentation/views/auth/forgot_password_view.dart';
import 'package:pasien/src/presentation/views/auth/login_email_phone_view.dart';
import 'package:pasien/src/presentation/views/auth/login_otp_view.dart';
import 'package:pasien/src/presentation/views/auth/login_view.dart';
import 'package:pasien/src/presentation/views/auth/register_view.dart';
import 'package:pasien/src/presentation/views/auth/reset_password_view.dart';
import 'package:pasien/src/presentation/views/auth/verify_email_code_view.dart';
import 'package:pasien/src/presentation/views/auth/verify_email_view.dart';
import 'package:pasien/src/presentation/views/chat/chat_detail_view.dart';
import 'package:pasien/src/presentation/views/chat/video_call_view.dart';
import 'package:pasien/src/presentation/views/chat/video_calling_view.dart';
import 'package:pasien/src/presentation/views/faskes/faskes_detail_view.dart';
import 'package:pasien/src/presentation/views/faskes/faskes_list_obat_selector.dart';
import 'package:pasien/src/presentation/views/faskes/faskes_list_view.dart';
import 'package:pasien/src/presentation/views/home/dashboard_view.dart';
import 'package:pasien/src/presentation/views/home/emergency_view.dart';
import 'package:pasien/src/presentation/views/medical_record/medical_record_detail_view.dart';
import 'package:pasien/src/presentation/views/medical_record/medical_record_list.dart';
import 'package:pasien/src/presentation/views/news/news_detail_view.dart';
import 'package:pasien/src/presentation/views/notification/notification_view.dart';
import 'package:pasien/src/presentation/views/obat/pesan_obat_view.dart';
import 'package:pasien/src/presentation/views/obat/pesanan_obat_detail_view.dart';
import 'package:pasien/src/presentation/views/obat/pesanan_obat_view.dart';
import 'package:pasien/src/presentation/views/payment/payment_detail_view.dart';
import 'package:pasien/src/presentation/views/payment/payment_view.dart';
import 'package:pasien/src/presentation/views/profile/address/address_form.dart';
import 'package:pasien/src/presentation/views/profile/address/address_view.dart';
import 'package:pasien/src/presentation/views/profile/document/document_form.dart';
import 'package:pasien/src/presentation/views/profile/document/document_list_view.dart';
import 'package:pasien/src/presentation/views/profile/family/family_form.dart';
import 'package:pasien/src/presentation/views/profile/family/family_list_view.dart';
import 'package:pasien/src/presentation/views/profile/insurance/insurance_form.dart';
import 'package:pasien/src/presentation/views/profile/insurance/insurance_list_view.dart';
import 'package:pasien/src/presentation/views/profile/personal_data/personal_data_view.dart';
import 'package:pasien/src/presentation/views/profile/personal_data/personal_data_view2.dart';
import 'package:pasien/src/presentation/views/profile/update_password_view.dart';
import 'package:pasien/src/presentation/views/resep/resep_paid_view.dart';
import 'package:pasien/src/presentation/views/resep/resep_view.dart';
import 'package:pasien/src/presentation/views/rujukan/rujukan_detail_view.dart';
import 'package:pasien/src/presentation/views/temudokter/detail_pertemuan_view.dart';
import 'package:pasien/src/presentation/views/faskes/faskes_list_selector.dart';
import 'package:pasien/src/presentation/views/temudokter/konfirmasi_antrian_view.dart';
import 'package:pasien/src/presentation/views/temudokter/pertemuan_list_selector.dart';
import 'package:pasien/src/presentation/views/temudokter/dokter_list_selector.dart';
import 'package:pasien/src/presentation/views/rujukan/rujukan_list_view.dart';
import 'package:pasien/src/presentation/views/schedule/dokter_detail_view.dart';
import 'package:pasien/src/presentation/views/schedule/pilih_dokter_selector.dart';
import 'package:pasien/src/presentation/views/splash_view.dart';
import 'package:pasien/src/presentation/views/settings/settings_controller.dart';
import 'package:pasien/src/presentation/views/settings/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/presentation/views/temudokter/revisi_rujukan_view.dart';
import 'package:pasien/src/presentation/views/temudokter/verification_status_view.dart';

class AppRoute {
  const AppRoute._();

  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    late WidgetBuilder builder;
    bool fullscreenDialog = false;

    switch (routeSettings.name) {
      case SettingsView.routeName:
        builder = (context) =>
            SettingsView(controller: context.read<SettingsController>());
        break;
      case LoginView.routeName:
        builder = (context) => BlocProvider(
              create: (context) => LoginBloc(
                userRepository: context.read(),
              ),
              child: const LoginView(),
            );
        fullscreenDialog = true;
        break;
      case ResetPasswordView.routeName:
        builder = (context) => const ResetPasswordView();
        break;
      case LoginEmailPhoneView.routeName:
        if (routeSettings.arguments is int) {
          builder = (context) => LoginEmailPhoneView(
                tabIndex: routeSettings.arguments as int,
              );
        } else {
          builder = (context) => const LoginEmailPhoneView();
        }
        break;
      case LoginOTPView.routeName:
        builder = (context) => const LoginOTPView();
        break;
      case ForgotPasswordView.routeName:
        if (routeSettings.arguments is String) {
          builder = (context) => BlocProvider(
                create: (context) => ForgotPasswordBloc(
                  email: routeSettings.arguments as String,
                  userRepository: context.read(),
                ),
                child: const ForgotPasswordView(),
              );
        }
        break;
      case ChangePasswordView.routeName:
        if (routeSettings.arguments is ForgotPasswordBloc) {
          builder = (context) => BlocProvider.value(
                value: routeSettings.arguments as ForgotPasswordBloc,
                child: const ChangePasswordView(),
              );
        }
        break;
      case RegisterView.routeName:
        builder = (context) => BlocProvider(
              create: (context) => RegisterBloc(
                userRepository: context.read(),
              ),
              child: const RegisterView(),
            );
        break;
      case VerifyEmailView.routeName:
        builder = (context) => const VerifyEmailView();
        break;
      case VerifyEmailCodeView.routeName:
        builder = (context) => BlocProvider(
              create: (context) => RegisterVerificationBloc(
                userRepository: context.read(),
              ),
              child: const VerifyEmailCodeView(),
            );
        break;
      case DashboardView.routeName:
        builder = (context) => const DashboardView();
        break;
      case EmergencyView.routeName:
        builder = (context) => const EmergencyView();
        break;
      case PersonalDataView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthenticationBloc>();
                final user = authBloc.state.userModel!;
                final loginUser = authBloc.state.loginUser!;

                return PersonalDataBloc(
                  user: user,
                  bearerToken: loginUser.bearerToken,
                  userRepository: context.read(),
                );
              },
              child: const PersonalDataView(),
            );
        break;
      case PersonalDataView2.routeName:
        if (routeSettings.arguments is PersonalDataBloc) {
          builder = (context) => BlocProvider.value(
                value: routeSettings.arguments as PersonalDataBloc,
                child: const PersonalDataView2(),
              );
        }
        break;
      case AddressView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthenticationBloc>();
                final user = authBloc.state.userModel!;
                final loginUser = authBloc.state.loginUser!;

                return AddressBloc(
                  user: user,
                  bearerToken: loginUser.bearerToken,
                  repository: context.read(),
                );
              },
              child: const AddressView(),
            );
        break;
      case AddressForm.routeName:
        if (routeSettings.arguments is AddressBloc) {
          builder = (context) => BlocProvider.value(
                value: routeSettings.arguments as AddressBloc,
                child: const AddressForm(),
              );
        }
        break;
      case FamilyListView.routeName:
        builder = (context) {
          final authBloc = context.read<AuthenticationBloc>();
          final state = authBloc.state;
          final loginUser = state.loginUser!;
          final bearerToken = loginUser.bearerToken;

          return BlocProvider(
            create: (context) => FamilyBloc(
              bearerToken: bearerToken,
              repository: context.read(),
              userId: state.userId!,
            ),
            child: const FamilyListView(),
          );
        };
        break;
      case FamilyForm.routeName:
        FamilyModel? familyModel = routeSettings.arguments is FamilyModel
            ? routeSettings.arguments as FamilyModel
            : null;
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthenticationBloc>();
                final state = authBloc.state;
                final loginUser = state.loginUser!;
                final bearerToken = loginUser.bearerToken;

                return FamilyFormBloc(
                  family: familyModel,
                  bearerToken: bearerToken,
                  repository: context.read(),
                );
              },
              child: const FamilyForm(),
            );
        break;
      case InsuranceListView.routeName:
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthenticationBloc>();
                final state = authBloc.state;
                final loginUser = state.loginUser!;
                final bearerToken = loginUser.bearerToken;

                return InsuranceBloc(
                  bearerToken: bearerToken,
                  repository: context.read(),
                  userId: state.userId!,
                );
              },
              child: const InsuranceListView(),
            );
        break;
      case InsuranceForm.routeName:
        InsuranceModel? insuranceModel =
            routeSettings.arguments is InsuranceModel
                ? routeSettings.arguments as InsuranceModel
                : null;
        builder = (context) => BlocProvider(
              create: (context) {
                final authBloc = context.read<AuthenticationBloc>();
                final state = authBloc.state;
                final loginUser = state.loginUser!;
                final bearerToken = loginUser.bearerToken;

                return InsuranceFormBloc(
                  insurance: insuranceModel,
                  bearerToken: bearerToken,
                  repository: context.read(),
                  fileRepository: context.read(),
                );
              },
              child: const InsuranceForm(),
            );
        break;
      case DocumentListView.routeName:
        builder = (context) => const DocumentListView();
        break;
      case DocumentForm.routeName:
        builder = (context) => const DocumentForm();
        break;
      case UpdatePasswordView.routeName:
        builder = (context) => const UpdatePasswordView();
        break;
      case FaskesListSelector.routeName:
        builder = (context) => const FaskesListSelector();
        break;
      case PertemuanListSelector.routeName:
        builder = (context) => const PertemuanListSelector();
        break;
      case DokterListSelector.routeName:
        builder = (context) => const DokterListSelector();
        break;
      case KonfirmasiAntrianView.routeName:
        builder = (context) => const KonfirmasiAntrianView();
        break;
      case VerificationStatusView.routeName:
        if (routeSettings.arguments is VerificationStatus) {
          builder = (context) => VerificationStatusView(
                status: routeSettings.arguments as VerificationStatus,
              );
        } else {
          builder = (context) => const VerificationStatusView();
        }
        break;
      case RevisiRujukanView.routeName:
        builder = (context) => const RevisiRujukanView();
        break;
      case DetailPertemuanView.routeName:
        builder = (context) => const DetailPertemuanView();
        break;
      case PilihDokterSelector.routeName:
        builder = (context) => const PilihDokterSelector();
        break;
      case DokterDetailView.routeName:
        builder = (context) => const DokterDetailView();
        break;
      case PaymentView.routeName:
        if (routeSettings.arguments is String) {
          builder = (context) => PaymentView(
                nextRoute: routeSettings.arguments as String,
              );
        }
        break;
      case PaymentDetailView.routeName:
        builder = (context) => const PaymentDetailView();
        break;
      case ChatDetailView.routeName:
        builder = (context) => const ChatDetailView();
        break;
      case VideoCallingView.routeName:
        builder = (context) => const VideoCallingView();
        break;
      case VideoCallView.routeName:
        builder = (context) => const VideoCallView();
        fullscreenDialog = true;
        break;
      case ResepView.routeName:
        builder = (context) => const ResepView();
        break;
      case ResepPaidView.routeName:
        builder = (context) => const ResepPaidView();
        break;
      case RujukanListView.routeName:
        builder = (context) => const RujukanListView();
        break;
      case RujukanDetailView.routeName:
        builder = (context) => const RujukanDetailView();
        break;
      case MedicalRecordList.routeName:
        builder = (context) => const MedicalRecordList();
        break;
      case MedicalRecordDetailView.routeName:
        builder = (context) => const MedicalRecordDetailView();
        break;
      case FaskesListView.routeName:
        builder = (context) => const FaskesListView();
        break;
      case FaskesDetailView.routeName:
        builder = (context) => const FaskesDetailView();
        break;
      case PesananObatView.routeName:
        builder = (context) => const PesananObatView();
        break;
      case PesananObatDetailView.routeName:
        builder = (context) => const PesananObatDetailView();
        break;
      case FaskesListObatSelector.routeName:
        builder = (context) => const FaskesListObatSelector();
        break;
      case PesanObatView.routeName:
        builder = (context) => const PesanObatView();
        break;
      case NotificationView.routeName:
        builder = (context) => const NotificationView();
        break;
      case NewsDetailView.routeName:
        builder = (context) => const NewsDetailView();
        break;
      default:
        builder = (context) => const SplashView();
        break;
    }

    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: builder,
      fullscreenDialog: fullscreenDialog,
      maintainState: true,
    );
  }
}
