getDomain(domain) {
  try {
    // e.g. http://foo.com/path/to/bar
    const domain.split('//')[1];
    // e.g. foo.com/path/to/bar
    return domain.split('/')[0];
  } catch (err) {
    return null;
  }
}