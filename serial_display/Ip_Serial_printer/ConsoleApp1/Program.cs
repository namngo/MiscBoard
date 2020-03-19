using System;
using System.IO.Ports;
using System.Linq;
using System.Net.NetworkInformation;
using System.Threading;

namespace ConsoleApp1
{
    class Program
    {
        static SerialPort _serialPort;
        static bool _continue = true;

        static void Main(string[] args)
        {
            Console.WriteLine("Available ports:");
            foreach(var port in SerialPort.GetPortNames())
            {
                Console.WriteLine(port);
            }
            _serialPort = new SerialPort("COM3", 115200)
            {
                ReadTimeout = 500,
                WriteTimeout = 500,
            };
            _serialPort.Open();

            _serialPort.DataReceived += _serialPort_DataReceived;
            
            while(_continue)
            {
                if (Console.KeyAvailable)
                {
                    var cmd = Console.ReadLine();
                    if (cmd == "q")
                    {
                        _continue = false;
                    }
                }
                var ip = GetIpAddress();
                _serialPort.WriteLine(ip);
                Thread.Sleep(5000);
            }
            _serialPort.Close();
        }

        private static void _serialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            var message = _serialPort.ReadLine();
            Console.WriteLine(message);
        }

        public static string GetIpAddress()
        {
            var ip = NetworkInterface.GetAllNetworkInterfaces()
                        .Where(ni => ni.NetworkInterfaceType == NetworkInterfaceType.Ethernet && 
                                     ni.GetIPProperties().GatewayAddresses.Any())
                        .SelectMany(ni => ni.GetIPProperties().UnicastAddresses)
                        .Where(ip => ip.Address.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                        .Select(ip => ip.Address.ToString())
                        .FirstOrDefault();
            
            return ip;
        }
    }
}
