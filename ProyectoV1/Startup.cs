using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProyectoV1.Startup))]
namespace ProyectoV1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
