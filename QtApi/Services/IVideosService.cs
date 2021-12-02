using System.Collections.Generic;
using QtApi.Model;

namespace QtApi.Services
{
    public interface IVideosService
    {
        Videos AddVideo(Videos video);
        List<Videos> GetVideos();
        void UpdateVideo(Videos video);
        string DeleteVideo(int id);
        
        List<Usuario> GetUsuarios();
        Usuario GetUsuarioPorId(string correo);
        
        List<Movies> GetMovies();
    }
}