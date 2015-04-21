using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlextrafikWebApplication.Startup))]
namespace FlextrafikWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
