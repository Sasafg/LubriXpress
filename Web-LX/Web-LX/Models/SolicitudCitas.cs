using Web_LX.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Web;
using System.Web.Mvc;

namespace Web_LX.Models
{
    [Authorize]
    public class SolicitudCitas
    {
        UtilitiesModel apiEnviroment = new UtilitiesModel();

        public List<Citas> RequestPreCita()
        {
            using (var custom = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestPreCita";

                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                custom.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);

                HttpResponseMessage resp = custom.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<Citas>>().Result;
                }

                return new List<Citas>();
            }

        }




        public List<Citas> RequestRegistrationsToday()
        {
            using (var custom = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestRegistrationsToday";

                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                custom.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);

                HttpResponseMessage resp = custom.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<Citas>>().Result;
                }

                return new List<Citas>();
            }

        }



    }
}