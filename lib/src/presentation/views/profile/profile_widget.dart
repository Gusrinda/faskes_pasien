import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/blocs/auth/authentication/authentication_bloc.dart';
import 'package:flutter/material.dart';

class ProfileId extends StatelessWidget {
  const ProfileId({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.userModel != current.userModel,
      builder: (context, state) {
        final user = state.userModel;
        final noRM = user != null
            ? user.noRm != null
                ? 'No RM ${user.noRm}'
                : user.username
            : '';

        return Text(
          noRM,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class ProfileName extends StatelessWidget {
  const ProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.userModel != current.userModel,
      builder: (context, state) {
        final user = state.userModel;
        String name = '';
        if (user != null &&
            user.namePrefix != null &&
            user.nameSuffix != null) {
          name = '${user.namePrefix} ${user.nameSuffix}';
        }

        if (name.isEmpty) {
          name = user?.name ?? '';
        }

        return Text(
          name,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class ProfilePhone extends StatelessWidget {
  const ProfilePhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.userModel != current.userModel,
      builder: (context, state) {
        final user = state.userModel;
        final phone = user?.phone ?? '';

        return Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.call, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
              TextSpan(text: '  $phone  '),
              WidgetSpan(
                child: Icon(Icons.check_circle, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
              const TextSpan(text: ' '),
              WidgetSpan(
                child: Icon(Icons.edit, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      buildWhen: (previous, current) => previous.userModel != current.userModel,
      builder: (context, state) {
        final user = state.userModel;
        final email = user?.email ?? '';

        return Text.rich(
          TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.email, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
              TextSpan(text: '  $email  '),
              WidgetSpan(
                child: Icon(Icons.check_circle, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
              const TextSpan(text: ' '),
              WidgetSpan(
                child: Icon(Icons.edit, color: Colors.white, size: 12.sp),
                alignment: PlaceholderAlignment.middle,
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        );
      },
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Stack(
      children: [
        Assets.images.profilePlaceholder.image(
          width: 72.sp,
          height: 72.sp,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: themeData.primaryColor,
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              color: themeData.primaryColor,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}
