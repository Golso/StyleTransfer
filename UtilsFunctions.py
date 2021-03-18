import tensorflow as tf
from PIL import Image
import numpy as np


def tensor_to_image(tensor):
    tensor = tensor * 255
    tensor = np.array(tensor, dtype=np.uint8)
    if np.ndim(tensor) > 3:
        assert tensor.shape[0] == 1
        tensor = tensor[0]
    return Image.fromarray(tensor)


def load_img(path_to_img, resize=True, size=256):
    img = tf.io.read_file(path_to_img)
    img = tf.image.decode_jpeg(img, channels=3)
    img = tf.image.convert_image_dtype(img, tf.float32)

    if resize:
        img = tf.image.resize(img, [size, size])

    img = img[tf.newaxis, :]

    return img


def clip_0_1(image):
    return tf.clip_by_value(image, clip_value_min=0.0, clip_value_max=1.0)


def load_model(model_path):
    model = tf.keras.models.load_model(model_path)
    return model


def create_model(img_path, model):
    img = load_img(img_path, True, 600)
    img = model(img)
    img = clip_0_1(img)
    img = tensor_to_image(img)
    return img
