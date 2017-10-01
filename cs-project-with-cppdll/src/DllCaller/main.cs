using System;

using System.Runtime.InteropServices;

class Program {
    [DllImport("HelloWorldDll.dll")]
    extern static void HelloWorld();

    static void Main()
    {
        HelloWorld();
    }
}
