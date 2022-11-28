import 'package:tdd_flutter_graphql/src/core/essentials/fake_factory.dart';
import 'package:tdd_flutter_graphql/src/modules/characters/domain/entities/character_entity.dart';

class CharacterEntityFactory extends FakeFactory<CharacterEntity> {
  @override
  CharacterEntity generateFake() {
    return CharacterEntity(
      id: createFakeUuid(),
      name: faker.person.name(),
      image: faker.image.image(),
      gender: faker.person.firstName(),
    );
  }
}
