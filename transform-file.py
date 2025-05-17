import base64

with open("C://Users//Usuario//Desktop//CURSOS//Bootcamp Análisis de Datos//lab-sql-mysql-db-creation//diagram.png", "rb") as img_file:
    base64_string = base64.b64encode(img_file.read()).decode('utf-8')
    

output_filename = "C://Users//Usuario//Desktop//CURSOS//Bootcamp Análisis de Datos//lab-sql-mysql-db-creation//diagram_binary.png"

# Decodifica y guarda como archivo
with open(output_filename, "wb") as file:
    file.write(base64.b64decode(base64_string))
