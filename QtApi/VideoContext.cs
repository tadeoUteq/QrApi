using Microsoft.EntityFrameworkCore;
using QtApi.Model;

namespace QtApi
{
    public class VideoContext : DbContext
    {
        public VideoContext(DbContextOptions<VideoContext> options) : base(options)
        {

        }

        public DbSet<Videos> Videos { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Movies> Movies { get; set; }

    }
}