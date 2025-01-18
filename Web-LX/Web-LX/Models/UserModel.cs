﻿
using Web_LX.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Json;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Web_LX.Models
{
    [Authorize]
    public class UserModel
    {
        UtilitiesModel apiEnviroment = new UtilitiesModel();

        [AllowAnonymous]
        public UserEnt Login(UserEnt ent)

        {
            using (var custom = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/Login";
                JsonContent body = JsonContent.Create(ent);

                HttpResponseMessage resp = custom.PostAsync(url, body).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<UserEnt>().Result;
                }

                return null;
            }
        }


        public List<UserEnt> VerUsuarios()
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/VerUsuarios";

                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<List<UserEnt>>().Result;
                }

                return new List<UserEnt>();
            }
        }

        public UserEnt RequestUser(long i)
        {
            using (var client = new HttpClient())
            {
                string url = apiEnviroment.getApiUrl() + "api/RequestUser?i=" + i;
                String Token = HttpContext.Current.Session["TokenUser"].ToString();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + Token);
                HttpResponseMessage resp = client.GetAsync(url).Result;

                if (resp.IsSuccessStatusCode)
                {
                    return resp.Content.ReadFromJsonAsync<UserEnt>().Result;
                }

                return null;
            }
        }



        public string Encrypt(string toEncrypt)
        {
            byte[] keyArray;
            byte[] toEncryptArray = UTF8Encoding.UTF8.GetBytes(toEncrypt);

            System.Configuration.AppSettingsReader settingsReader = new AppSettingsReader();
            string key = ConfigurationManager.AppSettings["secretKey"].ToString();
            MD5CryptoServiceProvider hashmd5 = new MD5CryptoServiceProvider();
            keyArray = hashmd5.ComputeHash(UTF8Encoding.UTF8.GetBytes(key));
            hashmd5.Clear();

            TripleDESCryptoServiceProvider tdes = new TripleDESCryptoServiceProvider();

            tdes.Key = keyArray;
            tdes.Mode = CipherMode.ECB;
            tdes.Padding = PaddingMode.PKCS7;

            ICryptoTransform cTransform = tdes.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(toEncryptArray, 0, toEncryptArray.Length);
            tdes.Clear();
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }
    }
}