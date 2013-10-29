//= require spec_helper
//= require squares

//describe("The string 'awesome'", function() {
  //it("should be 'awesome'", function() {
    //"awesome".should.eq("awesome");
  //});
//});

describe('numSquares()', function() {
  it('should return the number of squares in the squares div', function() {
    var count = $('#squares').children().length;
    numSquares().should.eq(count);
  });
});
