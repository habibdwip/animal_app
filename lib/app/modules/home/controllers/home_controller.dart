import 'package:animal_app/app/data/animal.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<AnimalList> Animal = [
    AnimalList(
        Name: 'Butterfly',
        Spesies: 17500,
        Image: 'assets/image/butterfly.jpg',
        Desc:
            'Butterflies are beautiful insects with colorful wings. They go through a life cycle called metamorphosis, starting as eggs, then turning into caterpillars, forming a chrysalis, and finally emerging as butterflies. They use their long, tube-like tongues to drink nectar from flowers.'),
    AnimalList(
        Name: 'Tiger',
        Spesies: 6,
        Image: 'assets/image/tiger.jpg',
        Desc:
            'Tigers are large cats with powerful bodies and distinctive orange fur with black stripes. They are the largest living cats in the world and are known for their strength and agility. Tigers are solitary animals and are apex predators, meaning they are at the top of the food chain.'),
    AnimalList(
        Name: 'Dog',
        Spesies: 360,
        Image: 'assets/image/dog.jpg',
        Desc:
            'Dog is domesticated mammals known for their loyalty and intelligence. They come in a variety of shapes, sizes, and breeds, each with unique characteristics. Dogs have been bred for various purposes, including hunting, herding, guarding, and companionship. They are carnivores with a keen sense of smell and hearing.'),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
