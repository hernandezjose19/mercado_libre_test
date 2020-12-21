import requests

ruta_archivo =  str(input("Por favor, introduce la ruta donde quieres que se guarde tu archivo de tipo log "))

def obtener_datos():
    obteniendo_datos = requests.get("https://api.mercadolibre.com/sites/MLA/search?seller_id=179571326")
    datos_generales = obteniendo_datos.json()
    results = datos_generales["results"]
    f = open(f"{ruta_archivo}", "w")
    f.write("El archivo trae: ID --- TITLE --- CATEGORY_ID --- NAME_CATEGORY" + '\n\n')
    for claves in results:

        id = claves["id"]
        title = claves["title"]
        category_id = claves["category_id"]
        name_category = claves["domain_id"]
        f.write(id + " ---- ")
        f.write(title + " ----- ")
        f.write(category_id + " ---- ")
        f.write(name_category + "\n")
    
    print(f"el archivo se guardo en la ruta {ruta_archivo} exitosamente")

obtener_datos()
