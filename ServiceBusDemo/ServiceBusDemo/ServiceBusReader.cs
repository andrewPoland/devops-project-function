using System.Text;
using Microsoft.Azure.ServiceBus;
using Microsoft.Azure.ServiceBus.InteropExtensions;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace ServiceBusDemo
{
    public static class ServiceBusReader
    {
        [FunctionName("ServiceBusReader")]
        public static void Run([ServiceBusTrigger("NewSubscriptions", "SendSignupEmail", Connection = "ServiceBusRootConnectionString")] byte[] structuredMessage, ILogger log)
        {
            SignupInformation newAccount = DeserializeJsonMessage<SignupInformation>(structuredMessage);
            if (newAccount.AccountExists)
            {
                log.LogInformation("fix the filter on your subscription to prevent this.");
            }

            log.LogInformation($"C# ServiceBus topic trigger function processed message with email: {newAccount.EmailAddress}");
        }

        private static T DeserializeJsonMessage<T>(byte[] message)
        {
            string jsonContent = Encoding.UTF8.GetString(message);
            return JsonConvert.DeserializeObject<T>(jsonContent);
        } 
    }

    public class SignupInformation
    {
        public bool AccountExists { get; set; }
        public string EmailAddress { get; set; }
    }
}

