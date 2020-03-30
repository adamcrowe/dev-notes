/*
    Requirements:

    1. Create a "Foods" class or constructor that will take two arguments: a root element and a data object (foodData).
    2. Render all of the items in the data object into the DOM with the root element as the parent.
    3. If the user clicks a food item, it should be removed from the list.

    Rules:
    - Only vanilla JS
    - Feel free to use Google, Bing, DuckDuckGo to look things up
    - Time limit: 30 minutes
*/

/* DO NOT MODIFY */
const rootElement = document.querySelector('.foods');

const foodData = [
    {
        id: 1,
        image: '🌮',
        name: 'taco'
    },
    {
        id: 2,
        image: '🍔',
        name: 'burger'
    },
    {
        id: 3,
        image: '🍆',
        name: 'eggplant'
    },
    {
        id: 4,
        image: '🍎',
        name: 'apple'
    },
    {
        id: 5,
        image: '🥞',
        name: 'pancakes'
    },
];
/* DO NOT MODIFY */

/**
 * Returns Foods instance
 */
class Foods {
    constructor(element, foodData) {
        this.root = element;
        this.data = foodData
    }

    // Render foods list to DOM
    renderList() {
        // Add listener to entire foods list (root div)
        this.root.addEventListener('click', event => {
            const { target } = event;
            // Remove item
            target.remove();
        });

        // Create foods list container
        const fragment = document.createDocumentFragment();

        // Add items to foods list container
        this.data.forEach(item => {
            fragment.appendChild(this.createFoodItem(item));
        });

        // Render food list container to DOM
        this.root.appendChild(fragment);
    }

    // Create food list item
    createFoodItem(item) {
        const itemEl = document.createElement('div');
        // Set list item content
        itemEl.innerText = item.image;
        // Set list item class
        itemEl.classList.add(item.name);

        return itemEl;
    }
}

// Create foods list instance
const foods = new Foods(rootElement, foodData);

// Render instance to DOM
foods.renderList();