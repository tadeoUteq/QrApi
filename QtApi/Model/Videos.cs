using System.ComponentModel.DataAnnotations;
using System.Dynamic;

namespace QtApi.Model
{
    public class Videos
    {
        [Key]
        public int Id { get; set; }
        public int Duracion { get; set; }
        public string Titulo { get; set; }
        public string Descripcion { get; set; }
        public int Temporada { get; set; }
        public string Url { get; set; }
        public string Poster { get; set; }
    }
    
    public class Usuario // agregado
    {
        [Key]
        public int Id { get; set; }
        public string Correo { get; set; }
        public string Password { get; set; }
    }

    public class Movies
    {
        [Key]
        public int id { get; set; }
        public string title { get; set; }
        public string description { get; set; }
        public string bgImageUrl { get; set; }
        public string cardImageUrl { get; set; }
        public string videoUrl { get; set; }
        public string studio { get; set; }
    }
}