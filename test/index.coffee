yak = require '../'
x = [{ foo: (zoom, zap) -> "#{zoom.toString()} -> #{zap.toString()}"}, { foo: (zoom, zap) -> "#{zoom} -> #{zap}"}]

console.log x.map(yak('foo', 'bar', 'baz'))


objs = [
  foo: (data) ->
    data.length
,
  foo: (data) ->
    data.length
 ]
results = objs.map(yak("foo",'bar'))
console.log results