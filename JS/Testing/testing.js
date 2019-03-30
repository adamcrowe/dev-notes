// Used with Node:
const { expect } = require('chai');
const proxyquire = require('proxyquire').noCallThru();
const { stub } = require('sinon');

// TODO:
// <https://jasmine.github.io/2.8/introduction#section-Jasmine_Clock>
// <https://jasmine.github.io/2.8/introduction#section-Asynchronous_Support>

// to avoid false positives, always start with failing tests
fail();