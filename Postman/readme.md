#postman

The postman collection used for testing my service bus azure function locally and in azure. It contains

1. A `string` parameter local function test.
2. A `byte[]` parameter deserialized as json local function test.
3. A call to put a json formatted message on a servicebus in azure.

Environments are included which contain parameters and descriptions of what values should be placed inside them.

1. localEnvironment for the 2 local azure function calls, these assume localhost and port 71.
2. azureEnvironment for the call which puts a message on servicebus.

see https://andrewpoland.github.io/2018/06/03/azure-functions-and-service-bus.html for more details.
