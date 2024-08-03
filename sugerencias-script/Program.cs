using Datos_Form;

Console.WriteLine("Hello World");

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


app.MapGet("/pages/Sugerencia.html", static context =>
{
#pragma warning disable CS8601 // Posible asignación de referencia nula
#pragma warning disable CS8601 // Posible asignación de referencia nula
#pragma warning disable CS8601 // Posible asignación de referencia nula
#pragma warning disable CS8601 // Posible asignación de referencia nula
    var datosFormulario = new DatosFormulario
    {
        Nombre = context.Request.Form["name"],
        Email = context.Request.Form["email"],
        Edad = Convert.ToInt32(context.Request.Form["age"]),
        Proyecto = Convert.ToInt32(context.Request.Form["dropdown"]),
        TipoSoftware = context.Request.Form["software"],
        Comentarios = context.Request.Form["commins"],
        RecibirCorreo = context.Request.Form.ContainsKey("recibir-correo"),
        Legitimidad = context.Request.Form.ContainsKey("legitimidad")
    };
#pragma warning restore CS8601 // Posible asignación de referencia nula
#pragma warning restore CS8601 // Posible asignación de referencia nula
#pragma warning restore CS8601 // Posible asignación de referencia nula
#pragma warning restore CS8601 // Posible asignación de referencia nula
    
    Console.WriteLine(datosFormulario);
    // Aquí debes escribir el código para guardar los datos en la base de datos de Access
    // Por ejemplo, utilizando ADO.NET y una consulta SQL para insertar los datos en la tabla

    return context.Response.WriteAsync("Datos guardados correctamente");
})


.WithName("DatosFormulario")
.WithOpenApi();

app.Run();