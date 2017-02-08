﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.ComponentModel;

namespace Funcionalidade
{
    public class Hospital
    {
        static HttpClient httpClient;

        static private void IniciarHttp()
        {
            httpClient = new HttpClient();
            httpClient.BaseAddress = new Uri("http://10.21.0.137/20131011110169/");
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Entidade.Hospital> Listar()
        {
            try
            {
                IniciarHttp();
                var response = httpClient.GetAsync("api/Hospital/Listar");
                HttpResponseMessage rm = response.Result;
                string str = rm.Content.ReadAsStringAsync().Result;
                var hospitais = JsonConvert.DeserializeObject<List<Entidade.Hospital>>(str);
                return hospitais;
            }
            catch (AggregateException)
            {

                List<Entidade.Hospital> hospitais = new List<Entidade.Hospital>();
                return hospitais;
            }
            
        }
    }
}
