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
    public class PreCitaModel
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


        public int ContactPreregister(Citas ent)
        {
            using (var custom = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/ContactPreregister";
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                custom.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);

                JsonContent body = JsonContent.Create(ent); //Serializar
                HttpResponseMessage resp = custom.PutAsync(url, body).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }

    }
}