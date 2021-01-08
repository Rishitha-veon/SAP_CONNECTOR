using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SAP_CONNECTOR
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// SAP Connector
        /// Sravani SAP Connector
        ///Rishitha SAP Connector
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
