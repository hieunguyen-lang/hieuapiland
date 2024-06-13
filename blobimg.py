import base64

def convert_image_to_base64(image_path):
    with open(image_path, 'rb') as image_file:
        binary_data = image_file.read()
        base64_encoded_data = base64.b64encode(binary_data)
        base64_message = base64_encoded_data.decode('utf-8')
    return base64_message

def save_base64_to_file(base64_string, output_file):
    with open(output_file, 'w') as file:
        file.write(base64_string)

# Example usage
image_path = '/home/hieu/Downloads/iudi-8-apr-2024/id.png'  # Thay đường dẫn này bằng đường dẫn đến ảnh của bạn
base64_string = convert_image_to_base64(image_path)
print(base64_string)

output_file = 'output_base64.txt'
save_base64_to_file(base64_string, output_file)
