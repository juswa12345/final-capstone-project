String errorMessage(String message) {
  if (message.contains('unknown')) {
    return 'Please Fill the Fields';
  }
  if (message.contains('invalid-email')) {
    return 'Email is Invalid';
  }
  if (message.contains('user-not-found')) {
    return 'No User with that Email';
  }
  if (message.contains('wrong-password')) {
    return 'Password Incorrect';
  }
  return message;
}
