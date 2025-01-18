using Web_LX.Entities;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Web;



namespace Web_LX.Models
{
    public class CarrosModel
    {

        UtilitiesModel apiEnviroment = new UtilitiesModel();
        public int CrearCarros(Carros ent)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/CrearCarros";
                JsonContent body = JsonContent.Create(ent); //Serializar
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


        public int EditarCarro(Carros ent)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/EditarCarro";
                JsonContent body = JsonContent.Create(ent); //Serializar
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


        public int EliminarCarro(string i)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/EliminarCarro?i=" + i;
                HttpResponseMessage resp = client.DeleteAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return 1;
                }

                return 0;
            }

        }
        public List<Carros> VerCarros()
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/VerCarros";

                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<Carros>>().Result;
                }

                return new List<Carros>();
            }
        }

    }
}