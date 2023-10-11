
***setting***
Library  RequestsLibrary

***Test Cases***
is_prime
    ${response}=  Get  http://localhost:5050/is_prime/17
    BuiltIn.Should Be Equal As Integers  ${response.status_code}  200
    BuiltIn.Should Be Equal As Strings  ${response.content}  True
    ${response}=  Get  http://localhost:5050/is_prime/36
    BuiltIn.Should Be Equal As Integers  ${response.status_code}  200
    BuiltIn.Should Be Equal As Strings  ${response.content}  False
     ${response}=  Get  http://localhost:5050/is_prime/13219
    BuiltIn.Should Be Equal As Integers  ${response.status_code}  200
    BuiltIn.Should Be Equal As Strings  ${response.content}  True