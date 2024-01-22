import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ControllerImagePicker extends GetxController {
  Rx<File?> imagePath = Rx<File?>(null);

  // Função para ir até a galeria e escolher uma imagem da galeria.
  Future<void> pickImageFromGallery() async {
    final ImagePicker imagePicker = ImagePicker();
    // Escolhe uma imagem da galeria.
    final image = await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      imagePath.value = File(image.path);
      update();
    }
  }
}
