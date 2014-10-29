chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz.coffee'

fizzbuzz = null

before ->
		fizzbuzz = new Fizzbuzz
	
describe 'Fizzbuzz', ->
	it 'Should know 3 is divisible by 3', ->
		expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

	it 'Should know 1 is not divisible by three', ->
		expect(fizzbuzz.isDivisibleByThree(1)).to.be.false

	it 'Should know 5 is divisible by 5', ->
		expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

	it 'Should know 1 is not divisible by 5', ->
		expect(fizzbuzz.isDivisibleByFive(1)).to.be.false

	it 'Should know 15 is divisible by 15', ->
		expect(fizzbuzz.isDivisibleByFifteen(15)).to.be.true

	it 'Should know 1 is not divisible by 15', ->
		expect(fizzbuzz.isDivisibleByFifteen(1)).to.be.false

	it 'Should say fizz if divisible by three', ->
		expect(fizzbuzz.says(3)).to.equal 'Fizz'

	it 'Should say buzz if divisible by five', ->
		expect(fizzbuzz.says(5)).to.equal 'Buzz'

	it 'Should say fizzbuzz if divisible by fifteen', ->
		expect(fizzbuzz.says(15)).to.equal 'FizzBuzz'

	it 'Should return number if not a FizzBuzz number', ->
		expect(fizzbuzz.says(1)).to.equal 1