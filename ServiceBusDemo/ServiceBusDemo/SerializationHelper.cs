using System.Text;
using Newtonsoft.Json;

namespace ServiceBusDemo
{
    public static class SerializationHelper
    {
        public static T DeserializeJsonMessage<T>(byte[] message)
        {
            string jsonContent = Encoding.UTF8.GetString(message);
            return JsonConvert.DeserializeObject<T>(jsonContent);
        }
    }
}