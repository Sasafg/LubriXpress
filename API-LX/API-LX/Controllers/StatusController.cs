using API_LX.Models;
using API_LX.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace API_LX.Controllers
{
    
        [Authorize]
        public class StatusController : ApiController
        {


            [HttpGet]
            [Route("api/RequestStatusScrollDown")]
            public List<StatusEnt> RequestStatusScrollDown()
            {
                using (var bd = new LubriXpressEntities()) { 
                    var data = bd.SeeStatus().ToList();

                    if (data.Count > 0)
                    {
                        List<StatusEnt> res = new List<StatusEnt>();
                        foreach (var item in data)
                        {
                            res.Add(new StatusEnt
                            {
                                StatusId = item.StatusId,
                                Name = item.Name
                            });
                        }

                        return res;
                    }

                    return new List<StatusEnt>();
                }
            }

        }
    }
 