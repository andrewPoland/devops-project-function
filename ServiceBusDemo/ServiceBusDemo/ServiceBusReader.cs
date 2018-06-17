using System.Text;
using Microsoft.Azure.ServiceBus;
using Microsoft.Azure.ServiceBus.InteropExtensions;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace ServiceBusDemo
{
    ///<Summary>
    /// Reads a message off the service bus and logs if the message is for an
    /// existing account or a new account.
    ///</Summary>
    public static class ServiceBusReader
    {
        [FunctionName("ServiceBusReader")]
        public static void Run([ServiceBusTrigger("NewSubscriptions", "SendSignupEmail", Connection = "ServiceBusRootConnectionString")] byte[] message, ILogger log)
        {
            SignupInformation newAccount = SerializationHelper.DeserializeJsonMessage<SignupInformation>(message);

            if (newAccount.AccountExists)
            {
                log.LogInformation("fix the filter on your subscription to reduce this noise.");
                return;
            }

            log.LogInformation($"C# ServiceBus topic trigger function processed message with email: {newAccount.EmailAddress}");
        }
    }
}
