namespace Datos_Form
{
    public class DatosFormulario
{
    [Required(ErrorMessage = "El campo Nombre es obligatorio.")]
    public string Nombre { get; set; }
    [EmailAddress(ErrorMessage = "El campo Email debe ser una dirección de correo válida.")]
    public string Email { get; set; }
    [Range(13, 100, ErrorMessage = "La Edad debe estar entre 18 y 100.")]
    public int Edad { get; set; }
    [Required(ErrorMessage = "El campo Proyecto es obligatorio.")]
    public int Proyecto { get; set; }
    public string TipoSoftware { get; set; }   
    [Required(ErrorMessage = "El campo Comentarios es obligatorio.")]
    public string Comentarios { get; set; }
    public bool RecibirCorreo { get; set; }
    [Required(ErrorMessage = "El campo Legitimidad es obligatorio.")]
    public bool Legitimidad { get; set; }
    
}
}
