const LOGIN_QUERY = r'''
                      query Login($email: String!, $password: String!) {
                        login(email: $email, password: $password) {
                            token,
                            user {
                                email,
                                profilePic,
                                id,
                                firstName,
                                lastName,
                            }
                        }
                    }
''';
