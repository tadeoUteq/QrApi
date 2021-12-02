using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using QtApi.Model;
using QtApi.Services;

namespace QtApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VideosController : Controller
    {
        private readonly IVideosService _videosService;

        public VideosController(IVideosService videoService)
        {
            _videosService = videoService;
        }
        
        [HttpGet]
        [Route("[action]")]
        [Route("api/Videos/IsAlive")]
        public IActionResult IsAlive()
        {
            return Ok();
        }
        
        [HttpGet]
        [Route("[action]")]
        [Route("api/Videos/GetVideos")]
        public IEnumerable<Videos> GetVideos()
        {
            return _videosService.GetVideos();
        }
        
        [HttpGet]
        [Route("[action]")]
        [Route("api/Videos/GetMovies")]
        public IEnumerable<Movies> GetMovies()
        {
            return _videosService.GetMovies();
        }
        
        [HttpPost] 
        [Route("[action]")]
        [Route("api/Videos/GetUsuarios")] 
        public IEnumerable<Usuario> GetUsuarios()
        {
            return _videosService.GetUsuarios();
        }
        
        [HttpPost]
        [Route("[action]")]
        [Route("api/Videos/GetUsuarioPorId")]
        public Usuario GetUsuarioPorId(string correo)
        {
            return _videosService.GetUsuarioPorId(correo);
        }
        
        [HttpPost]
        [Route("[action]")]
        [Route("api/Videos/AddVideo")]
        public IActionResult AddVideo(Videos video)
        {
            _videosService.AddVideo(video);
            return Ok();
        }

        [HttpPost]
        [Route("[action]")]
        [Route("api/Videos/UpdateVideo")]
        public IActionResult UpdateVideo(Videos video)
        {
            _videosService.UpdateVideo(video);
            return Ok();
        }

        [HttpDelete]
        [Route("[action]")]
        [Route("api/Videos/DeleteVideo")]
        public IActionResult DeleteVideo(int id)
        {
            string mensaje = _videosService.DeleteVideo(id);
            return Ok(mensaje);
        }
    }
}