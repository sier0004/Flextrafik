using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

using FlextrafikWebApplication.Models;

namespace FlextrafikWebApplication.Account
{
    public partial class ShowLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Location> GetLocations([QueryString("id")] int? locationId)
        {
            var _db = new FlextrafikWebApplication.Models.Context();
            IQueryable<Location> query = _db.Locations;
            if (locationId.HasValue && locationId > 0)
            {
                query = query.Where(p => p.LocationID == locationId);
            }
            return query;
        }
    }
}