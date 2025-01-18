using Web_LX.Entities;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Web;



namespace Web_LX.Models
{
    public class RolModel
    {

        UtilitiesModel apiEnviroment = new UtilitiesModel();

  

        public List<RolEnt> RequestRoles()
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestRoles";
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<RolEnt>>().Result;
                }

                return new List<RolEnt>();
            }

        }

        public int CreateRole(RolEnt entidad)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/CreateRole";
                JsonContent body = JsonContent.Create(entidad); //Serializar
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.PostAsync(url, body).Result;
                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }
        public int EditRole(RolEnt entidad)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/EditRole";
                JsonContent body = JsonContent.Create(entidad); //Serializar
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.PutAsync(url, body).Result;
                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }
        public RolEnt RequestRole(long i)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestRole?i=" + i;
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<RolEnt>().Result;
                }

                return null;
            }
        }
        public int DeleteRole(long i)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/DeleteRole?i=" + i;
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.DeleteAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<int>().Result;
                }

                return 0;
            }
        }

        public List<RolEnt> RequestRolesScrollDown()
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestRolesScrollDown";
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<RolEnt>>().Result;
                }

                return new List<RolEnt>();
            }

        }
}
}