from PIL import Image
import base64
from io import BytesIO
import os
def byteToString(byte):
    if byte:
        base64_string = base64.b64encode(byte).decode('utf-8')
        return str(base64_string)
    return None

def base64ToByte(base64data):
    if base64data:
        image = base64.b64decode(base64data)
        return image 
    return None





base64_string =  "iVBORw0KGgoAAAANSUhEUgAAAlgAAAJYCAYAAAC+ZpjcAAAACXBIWXMAAAsTAAALEwEAmpwYAAAgAElEQVR4XuzdeXgV9d3//+c5SQgBDEiCIgoEZXEjBGhBCJsWEkJbARdQXFG426q1etfr963XXbEVW/X7s9r+3FpB1CoqLiyVlkhQUEgAZQkBFBQFXBCVRDa9A2T5/TGC8HYDMjNnZs7rcV1zhb7ep5cKTM4rn5nzGRAREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREREfl+MRuIiDRQIyALyD7o68G/zgIaA+lfvXb/14N//W1ZIxx7vzr2fMuvvyurBiqBbQd9PfjXlV+9VkTEFSpYInK4WgA5Bx3tgFYcWqKygWMIp118Xbz2l67PgPeBTQcd2xER+QEqWCKyXyaHFqgO5n+3QMApWJsOOjaa/70TEUl6KlgiySUGHA/kAl2/+noGTplqedDr5OhV4ZSutUAFsPqrr58A9Qe9TkQiTAVLJLoygNM5tEzl4lzWE/99hlO09h+rgTeB/z34RSISDSpYItGQBfQB8vi6THUG4ge/SAKnDnibrwtXObAY5/4vEQkxFSyR8IkBnYD8g45TD3mFhN06oPSrYxGwAV1eFAkVFSyR4EsHenBoodJlvuTyGV8XrlJgBc72EyISUCpYIsHTHBjA12XqxzglS2S/PcAbfF24XgN2HPIKEUkoFSyRxIsB3YCir46+QMohrxD5fjVAGTAHKAZWoUuKIgmlgiWSGMcCQ4ChXx0nHDoWaZCPcYrWHGAe8PmhYxHxmgqWiD/iOJ/w279KdRZapRJ/1AJLcMrWHJxPKtYd8goRcZ0Kloh3mgDDgJ8DhTgbfIok2ifAS8CLwH+ALw8di4gbVLBE3JWBc8lvNE6xanLoWCRQvsApWs/irG5VHzoWkaOlgiXScOk4K1SjgOFAs0PHIqGwC/gXMA2Yi7aBEGkQFSyRo9MIGIyzUjUC50HJIlGxA5iJs7I1D9h76FhEfogKlsjhSwPOwVmpGonzSUCRqPscmIFTtl4B9h06FpFvo4Il8sM6AeOAK4HjDh2JJJVPgMeAyTiP7xGR76CCJfLtGgPnAeOBQYeORASY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"

def resize_and_compress_base64_image(base64_string):
    size=(400, 400)
    quality=85
    # Decode the base64 string
    image_data = base64.b64decode(base64_string)
    image = Image.open(BytesIO(image_data))

    # Convert image to 'RGB' if it is in 'RGBA' mode
    if image.mode == 'RGBA':
        image = image.convert('RGB')
    
    # Resize the image
    image = image.resize(size, Image.LANCZOS)
    
    # Compress and save the image to a BytesIO object
    output_buffer = BytesIO()
    image.save(output_buffer, format='JPEG', quality=quality)
    
    # Get the base64 string of the resized image
    compressed_base64_string = base64.b64encode(output_buffer.getvalue()).decode('utf-8')
    
    return compressed_base64_string
def resize_base64_image(base64_string):
    target_size=(1024, 1024)
    # Giải mã dữ liệu base64 thành dữ liệu ảnh
    image_data = base64.b64decode(base64_string)
    img = Image.open(BytesIO(image_data))
    if img.mode == 'RGBA':
        img = img.convert('RGB')
    # Lấy kích thước ban đầu của ảnh
    width, height = img.size

    # Tính toán tỉ lệ giảm
    ratio = min(target_size[0] / width, target_size[1] / height)

    # Giảm kích thước ảnh với tỉ lệ ban đầu
    new_width = int(width * ratio)
    new_height = int(height * ratio)
    img = img.resize((new_width, new_height), Image.LANCZOS)

    # Chuyển đổi ảnh đã giảm kích thước thành base64
    buffered = BytesIO()
    img.save(buffered, format="JPEG", quality=85)
    resized_base64_string = base64.b64encode(buffered.getvalue()).decode('utf-8')
    return resized_base64_string
def save_base64_image_to_file(base64_string, output_file):
    with open(output_file, "wb") as img_file:
        img_file.write(base64.b64decode(base64_string))
def joinstring(userid, str3, str2):
    result = str3 + str2 + str(userid) + ".jpeg"
    return result
def pathimg(userid,str1, str2):
    
    result = str1 + str2 + str(userid) + ".jpeg"
    return result
def saveandresizeimage(base64_string, userid, str1, str2,str3):
    resized_compressed_base64_string = resize_and_compress_base64_image(base64_string)
    output_file = joinstring(userid,str3, str2)
    avartarpath = pathimg(userid, str1, str2)
    save_base64_image_to_file(resized_compressed_base64_string, output_file)
    return avartarpath
import uuid

def joinstring2(id, str3, str2):  
    result = str3 + str2 + str(id) + ".jpeg"
    return result
def pathimg2(id, str1, str2):
    result = str1 + str2 + str(id) + ".jpeg"
    return result
def saveandreduceimg(base64_string, str1, str2,str3):
    unique_id = uuid.uuid4()
    resize_base64 = resize_base64_image(base64_string)
    output_file = joinstring2(unique_id,str3, str2)
    avartarpath = pathimg2(unique_id, str1, str2)
    save_base64_image_to_file(resize_base64, output_file)
    return avartarpath

def delete_file_in_folder(folder_path, file_name):
    file_path = os.path.join(folder_path, file_name)
    try:
        os.remove(file_path)
        print(f"Đã xoá file '{file_name}' thành công.")
    except OSError as e:
        print(f"Lỗi: {file_path} : {e.strerror}")
