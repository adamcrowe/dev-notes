/**
 * Returns just the domain name part of a URL
 *
 * @param {string} URL
 */
function getDomain(URL) {
    try {
        // e.g. http://foo.com/path/to/bar
        const domainPart = URL.split('//')[1];
        // e.g. foo.com/path/to/bar
        return domainPart.split('/')[0];
    } catch (err) {
        console.log('getDomain error: ', err);
        return null;
    }
}

module.exports = getDomain;