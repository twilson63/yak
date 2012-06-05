// yak
//
// Functional invoke pattern
//
// usage:
//
// var objs = [{foo: function(data) { return data.length}},{foo: function(data) { return data.length}}];
// var results = objs.map(yak('foo', 'bar'));
// console.log(results); // should [3,3]
//
module.exports = function(action) {
  var args = [].slice.call(arguments,1);
  return function(object) {
    return object[action].apply(object, args);
  }
}
