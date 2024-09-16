from PIL import Image


def buscar_pixeles_rgb(imagen, r_buscado, g_buscado, b_buscado):
    cantidad_pixeles = 0

    for pixel in imagen:
        r, g, b = pixel
        if r == r_buscado and g == g_buscado and b == b_buscado:
            cantidad_pixeles += 1

    return cantidad_pixeles


imagen = Image.open('imagens.jpg')
width, height = imagen.size

#convierte en pixeles
imagen = list(imagen.getdata())

rgb_input = input("Introduce el valor RGB (formato R,G,B): ")

try:
    r_buscado, g_buscado, b_buscado = map(int, rgb_input.split(','))
except ValueError:
    print(
        "Error: El formato de la entrada no es válido. Asegúrate de usar el formato R,G,B."
    )
    exit()

# Busca la cantidad de píxeles en RGB
cantidad_pixeles = buscar_pixeles_rgb(imagen, r_buscado, g_buscado, b_buscado)

print(f"Cantidad ({r_buscado}, {g_buscado}, {b_buscado}): {cantidad_pixeles}")
