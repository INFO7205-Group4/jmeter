# Jmeter
### Test cases:

### User endpoints
1. Tested on create endpoint and produce load to check the response for the endpoint. Multiple users can register using the endpoint
2. Tested on get user endpoint and generated load to check if the response is returned when its continuously hit.
3. Tested on delete user endpoint and generated load to check if the response is correct
4. Created a test to register a user once again and then updated the users

### List endpoints
1. Tested on create endpoint and produce load to check the response for the endpoint. Multiple lists can be created on various users.
2. Tested on  get list endpoint and generated load to check if the response is returned when its continuously hit.
3. Tested on update user endpoint and generated load to check if the response is correct


### Task endpoints
1. Tested on create endpoint and produce load to check the response from the endpoint is successful. Multiple tasks can be created on a list.
2. Tested on get task endpoint and generated load to check if the response is returned when its continuously hit.


### Tag endpoints
1. Tested on create endpoint and produce load to check the response from the endpoint is successful. Multiple tags can be created and attached to a task.
2. Tested on get task endpoint and generated load to check if the response is returned when its continuously hit.




###Commands:
Jmeter -n -t RegisterUserFinal.jmx -l C:\Users\nehab\Desktop\jmeter repo/jmeter/RegisterUserResults.csv
docker build . -t nehab/jmeter:latest



