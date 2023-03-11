class Pet {
	var name, animalType;
	
	Pet(this.name, this.animalType);
	
	@override
	String toString() => 'Pet{$name, $animalType}';
}

class AnimalDaycare {
	static final List<Pet> allPets = List<Pet>.empty(growable: true);
	static final List<Pet> petsToFeed = List<Pet>.empty(growable: true);
	
	void addPet(Pet pet, bool shouldFeed) {
		allPets.add(pet);
		
		if(shouldFeed) petsToFeed.add(pet);
	}
	
	void feedPet(String name, {String petType = 'Cat'}){
		// feedPet
		
		petsToFeed.removeWhere((Pet pet) => pet.name == name && pet.animalType == petType);
	}
}

void main() {
	var phoebe = Pet('Phoebe', 'Cat');
	var wallice = Pet('Wallice', 'Cat');
	var pome = Pet('Pome', 'Dog');

	AnimalDaycare()
		..addPet(phoebe, true)
		..addPet(wallice, true)
		..addPet(pome, false)
		..feedPet('Phoebe');
	
	print(AnimalDaycare.petsToFeed);
}