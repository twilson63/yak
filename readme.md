# yak

A functional method to invoke a method from an object.

# usage

example 1

``` javascript
var x = 123;
var results = yak("toString")(x);
// results = '123'
```

example 2

``` javascript
var objs = [
  {foo: function() { return this.bar.split('').reverse().join('') }, bar: 'bam'},
  {foo: function() { return this.bar.split('').reverse().join('') }, bar: 'baz'},
]
var results = objs.map(yak('foo'));
// results should equal ['mab','zab']
```

## install

``` sh
npm install yak
```

## contribute

pull requests welcome

## license

MIT

## Thanks to

- [functional-javascript](https://github.com/osteele/functional-javascript)
- [Christian Johansen](https://twitter.com/#!/cjno)
