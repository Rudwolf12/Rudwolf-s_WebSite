namespace Datos_Form
{
    public class DatosFormulario
{
    public required string Nombre { get; set; }
    public required string Email { get; set; }
    public required int Edad { get; set; }
    public required int Proyecto { get; set; }
    public required string TipoSoftware { get; set; }   
    public required string Comentarios { get; set; }
    public bool RecibirCorreo { get; set; }
    public required bool Legitimidad { get; set; }
}
}
