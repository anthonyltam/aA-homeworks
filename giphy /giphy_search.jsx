import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchSearchGiphys} from './util/api_util';

// window.fetchSearchGiphys = fetchSearchGiphys;

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  const root = document.getElementById('root');
  window.store = store;
  ReactDOM.render(<Root store={store} />, root);
});
