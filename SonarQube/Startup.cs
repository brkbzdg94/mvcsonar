using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SonarQube.Startup))]
namespace SonarQube
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
