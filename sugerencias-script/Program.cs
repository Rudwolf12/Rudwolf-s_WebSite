using Newtonsoft.Json;
using Datos_Form.Data;

List<DatosFormulario> datos = JsonConvert.DeserializeObject<List<DatosFormulario>>(json);

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
    
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();


app.MapPost("/pages/Sugerencia.html", static context =>
{
    var datosFormulario = new DatosFormulario
    {
        Nombre = context.Request.Form["name"],
        Email = context.Request.Form["email"],
        Edad = Convert.ToInt32(context.Request.Form["age"]),
        Proyecto = Convert.ToInt32(context.Request.Form["dropdown"]),
        TipoSoftware = Convert.ToInt32(context.Request.Form["software"]),
        Comentarios = context.Request.Form["commins"],
        RecibirCorreo = context.Request.Form.ContainsKey("recibir-correo"),
        Legitimidad = context.Request.Form.ContainsKey("legitimidad")
    };
    
    string json = @"[
    { ""Nombre"": " + Nombre + ", ""Email"": " + Email + ", ""Edad"": " + Edad +", ""Proyecto"": "Proyecto", ""Tipo de Software"": "TipoSoftware", ""Comentarios"": "Comentarios", ""Recibir correos"": "RecibirCorreo", ""Es legitimo"": "Legitimidad" },]";
    string path = @"formulario.json";
    File.WriteAllText(path, JsonConvert.SerializeObject(datos));

    // Aquí debes escribir el código para guardar los datos en la base de datos de Access
    // Por ejemplo, utilizando ADO.NET y una consulta SQL para insertar los datos en la tabla

    return context.Response.WriteAsync("Datos guardados correctamente");
})


.WithName("DatosFormulario")
.WithOpenApi();

app.Run();