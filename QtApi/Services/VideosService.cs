using System.Collections.Generic;
using System.Linq;
using QtApi.Model;

namespace QtApi.Services
{
    public class VideosService : IVideosService
    {
        public VideoContext _videoDbContext;

        public VideosService(VideoContext videoDbContext)
        {
            _videoDbContext = videoDbContext;
        }

        #region Metodos
        public Videos AddVideo(Videos video)
        {
            _videoDbContext.Videos.Add(video);
            _videoDbContext.SaveChanges();
            return video;
        }

        public List<Videos> GetVideos()
        {
            return _videoDbContext.Videos.ToList();
        }
        public List<Movies> GetMovies()
        {
            return _videoDbContext.Movies.ToList();
        }
        public List<Usuario> GetUsuarios()
        {
            return _videoDbContext.Usuario.ToList();
        }
        
        public Usuario GetUsuarioPorId(string correo)
        {
            Usuario userCorreo = _videoDbContext.Usuario.Where(x => x.Correo == correo).First();
            return userCorreo;
        }
        
        public void UpdateVideo(Videos video)
        {
            _videoDbContext.Videos.Update(video);
            _videoDbContext.SaveChanges();
        }

        public string DeleteVideo(int id)
        {
            string mensaje = "";
            Videos video = _videoDbContext.Videos.FirstOrDefault(x => x.Id == id);
            if(video != null)
            {
                _videoDbContext.Remove(video);
                _videoDbContext.SaveChanges();
                mensaje = "El video fue borrado satisfactoriamente!";
            }
            else
            {
                mensaje = "El video conb el Id: " + id + " no existe.";
            }
            return mensaje;
        }

        #endregion
    }
}