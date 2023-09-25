class Apis {
  //----------------------Auth endpoints-----------------------------
  static const String loginAPIUser = '/auth/login';
  static const String createAPIUser = '/auth/create_apiuser';

  //----------------------Users endpoints-----------------------------
  static const String login = '/users/login';
  static const String resetPassword = '/users/reset_password';
  static const String forgotPassword = '/users/forgot_password';
  static const String restPin = '/users/reset_pin';
  static const String newUserDetails = '/users/new_user_details';
  static const String create = '/users/create';
  static const String passwordCheck = '/users/password_check';
  static const String requestPhoneNumberOTP = '/users/request_phone_number_otp';
  static const String phoneExists = '/users/phone_exist';
  static const String requestEmailOTP = '/users/request_email_otp';
  static const String sendVerificationEmail = '/users/send_verification_email';
  static const String verifyEmail = '/users/verify_email';
  static const String setAvatarLink = '/users/set_avatar_link';
  static const String addAddress = '/users/add_address';
  static const String list = '/users/list';
  static const String getUser = '/users/get_user';
  static const String suspendAccount = '/users/suspend_account';
  static const String createPin = '/users/create_pin';
  static const String setTransactionLimit = '/users/set_transaction_limit';
  static const String initiateAddCard = '/users/initiate_add_card';
  static const String removeCard = '/users/remove_card';
}
