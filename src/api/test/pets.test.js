const expect = require('chai').expect;
const petsController = require('../controller/petsController');
const getData = require('../../helpers/getData');
const { generateRandomPet } = require('../../helpers/strings');
const DATA_PROPERTIES = require('../../constants');

describe('Add new pet', function() {

  it('should add a new pet', async () => {
    const data = getData();
    const response = await petsController.addNewPet(data);
    expect(response.status).to.equal(200);
    expect(response.data.name).to.equal(data.name);
    expect(response.data.id).to.equal(data.id); // replace with JSON schema
  });

});

describe('Pet', function() {
  let data;

  beforeEach(async () => {
    try {
      data = getData();
      await petsController.addNewPet(data);
    } catch(error) {
      throw new Error(`An error occured during creating a new pet: ${error}`);
    }
  });

  it('can be recieved by id', async () => {
    const response = await petsController.getPetById(data.id);
    expect(response.status).to.equal(200);
    expect(response.data.id).to.equal(data.id);
    expect(response.data.name).to.equal(data.name); // replace with JSON schema
  });
    
  it('should update a pet', async () => { // this won't work because of POST is not for updating
    const newData = {
      'name': generateRandomPet(),
      'status': DATA_PROPERTIES.STATUS
    };
    const response = await petsController.updatePet(data.id, newData);
    expect(response.status).to.equal(200);
    expect(response.data.type).to.equal('unknown'); // replace with JSON schema
  });
    
  it('should replace existing pet', async () => {
    const newData = getData({id: data.id});
    const response = await petsController.replacePet(newData);
    expect(response.status).to.equal(200);
    expect(response.data.id).to.equal(newData.id);
    expect(response.data.name).to.equal(newData.name); // replace with JSON schema
  });
    
  it('should delete a pet', async () => {
    const response = await petsController.deletePetById(data.id);
    const getPetResponse = await petsController.getPetById(data.id);
    expect(response.status).to.equal(200);
    expect(getPetResponse.status).to.equal(404);
  });

});