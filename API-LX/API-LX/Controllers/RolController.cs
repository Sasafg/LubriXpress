//using API_LX.Entities;
//using API_LX.Models;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Net;
//using System.Net.Http;
//using System.Web.Http;

//namespace API_LX.Controllers
//{
//    [Authorize]
//    public class RolController : ApiController
//    {
//        [HttpGet]
//        [Route("api/RequestRoles")]
//        public List<r> RequestRoles()
//        {
//            using (var bd = new CCIH_DBEntities1())
//            {
//                var data = bd.SeeRols().ToList();

//                if (data.Count > 0)
//                {
//                    List<RolEnt> res = new List<RolEnt>();
//                    foreach (var item in data)
//                    {
//                        res.Add(new RolEnt
//                        {
//                            IdRol = item.IdRol,
//                            Name = item.Name
//                        });
//                    }

//                    return res;
//                }

//                return null;
//            }

          
//        }



//        [HttpPost]
//        [Route("api/CreateRole")]
//        public int CreateRole(RolEnt ent)
//        {

//            using (var bd = new CCIH_DBEntities1())
//            {
//                return bd.CreateRol(ent.Name,
//                                    ent.UserId);
//            }
//        }



//        [HttpPut]
//        [Route("api/EditRole")]
//        public int EditRole(RolEnt ent)
//        {
//            using (var bd = new CCIH_DBEntities1())
//            {
//                var data = (from x in bd.Rol
//                             where x.IdRol == ent.IdRol
//                             select x).FirstOrDefault();

//                if (data != null)
//                {
//                    return bd.EditRol(ent.IdRol,ent.Name,ent.UserId);
//                }

//                return 0;
//            }
//        }



//        [HttpGet]
//        [Route("api/RequestRole")]
//        public RolEnt RequestRole(long i)
//        {
//            using (var bd = new CCIH_DBEntities1())
//            {
//                var data = (from x in bd.Rol
//                             where x.IdRol == i
//                             select x).FirstOrDefault();

//                if (data != null)
//                {
//                    RolEnt res = new RolEnt();
//                    res.Name = data.Name;
//                    res.IdRol = data.IdRol;
//                    return res;
//                }

//                return null;
//            }
//        }



//        [HttpDelete]
//        [Route("api/DeleteRole")]
//        public int DeleteRole(long i)
//        {
//            using (var bd = new CCIH_DBEntities1())
//            {
//                var data = (from cc in bd.Rol
//                               where cc.IdRol == i
//                               select cc).FirstOrDefault();

//                if (data != null)
//                {
//                    return bd.DeleteRol(i);

//                }

//                return 0;
//            }
//        }



//        [HttpGet]
//        [Route("api/RequestRolesScrollDown")]
//        public List<RolEnt> RequestRolesScrollDown()
//        {
//            using (var bd = new CCIH_DBEntities1())
//            {
//                var data = bd.SeeRols().ToList();

//                if (data.Count > 0)
//                {
//                    List<RolEnt> res = new List<RolEnt>();
//                    foreach (var item in data)
//                    {
//                        res.Add(new RolEnt
//                        {
//                            IdRol = item.IdRol,
//                            Name = item.Name,
//                            UserId = (long)item.UserIDModification
//                        });
//                    }

//                    return res;
//                }

//                return new List<RolEnt>();

//            }

//        }



//    }
//}
