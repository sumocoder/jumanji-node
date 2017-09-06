const assert = require('assert');
const request = require('request');

describe('Array', () => {
  describe('#indexOf()', () => {
    before(() => {
      const index = require('../index');
    });

    // just a simple test to ensure tests run in CI environments
    it('hit root endpoint', () => {
      request('http://localhost:3000', (error, response, body) => {
        assert.equal(response.statusCode, 200);
      });
    });
  });
});
