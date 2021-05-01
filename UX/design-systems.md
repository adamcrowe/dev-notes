# UI Audit

> Take screenshots of all components in your products, in each state and group them visually in one location by functionality. We're not grouping by visual similarity but by functionality because visual design patterns evolve, but the underlying behavior remains. Next, we prioritize. Which components will have the highest impact on the unification of your product? How feasible is this component to build? Prioritize the highest-impact and highest-feasibility elements first. -- [Introduction to Design Systems](https://fem-design-systems.netlify.app/building-a-design-system)

> ...we approached the design audit similarly to the start of a new web design project. We began decomposing the existing website into components, elements, and building blocks—or as Brad Frost calls it, performed an interface inventory. With a list of ten pages to audit, we printed each page, cut each into smaller pieces and parts, and laid everything out on a large conference room table. Now the real fun was about to begin! As identifiable patterns and commonalities began to emerge, we categorized the individual pieces and parts. While doing so, we noted items that would benefit from becoming reusable components. In the development of a future design system, each category would have its own section of implementation examples and documentation. Here are the main categories we identified as integral for a design system: -- [Auditing as a First Step to Design Systems Planning](https://sparkbox.com/foundry/design_audit_for_design_system_planning)

## Global Components
* Global components are items found on each page throughout the site. This includes the header, navigation, primary search, and footer.

## Type
* The typefaces used across the site and the typography of heading elements.

## Color
* Color swatches and palettes.

# Interactive Components
* Buttons, search inputs, product filters, navigation, and pagination.

## Data Elements
* Customer ratings and reviews including star rating icons, bar charts, and tables.

## Content Blocks
* Content blocks contain any or all of the following elements: heading, subheading, body copy, image(s), and a button or link. They can be informative or possess a call-to-action.

# Object Audit

> When you’re creating a bespoke Design System for a specific product, you have the opportunity to not just group common UI elements together, but to actually represent your core product concepts at many levels. I call this a Full Stack Design System. Here’s what a Full Stack Design System might consist of: -- [The Full Stack Design System](https://www.intercom.com/blog/the-full-stack-design-system/)

* __Shared conceptual model of your product__. This is the diagram you’d draw on a whiteboard to explain how your product works at a system level. What are the main objects in your product? How do they interact?
* __Shared language__ that everyone on your team uses to refer to your objects (“the same language from code to customer”). Remember, words matter. If designers, engineers, and support people all use the same word to describe the same thing, so much organisational fogginess goes away.
* __Shared design resources__ to quickly create mockups that accurately reflect our design systems. This often takes the form of a single file that everyone has access to. The file contains a Symbol for each object, and often multiple variations for displaying the same object at different sizes or in different contexts.
* __Shared code components__ that allow engineers to build these components and their variations, often with a single line of code.

> Most importantly, there’s a unifying thread through all of these levels...[A core object]...is the same, very specific thing whether it’s being sketched, described, designed or coded. If we want to change that object in some way, we can consistently change it across all levels. Teams are locked in and ambiguity disappears. In this way the sum of the system becomes much greater than the parts. -- [The Full Stack Design System](https://www.intercom.com/blog/the-full-stack-design-system/)

# Design Systems
* [Carbon (IBM)](https://carbondesignsystem.com/)
* [Atlassian Design System](https://atlassian.design/)
* [Bulb Design System](https://design.bulb.co.uk)
* [Primer (GitHub)](https://primer.style)
* [Spectrum (Adobe)](https://react-spectrum.adobe.com)
* [Clarity (VMware)](https://clarity.design)
* [Photon (Firefox)](https://design.firefox.com/photon)
* [Lightning (Salesforce)](https://lightningdesignsystem.com/)
* [Polaris (Shopify)](https://polaris.shopify.com/)
* [Lexicon (Liferay)](https://liferay.design/lexicon) <https://liferay.design/resources/figma>
* [Material System](https://material.io/design)
* [Chakra UI](https://chakra-ui.com/)
* [Designs Systems Collection](https://designsystemsrepo.com)

# References
* [Introduction to Design Systems](https://fem-design-systems.netlify.app/building-a-design-system)
* [Auditing as a First Step to Design Systems Planning](https://sparkbox.com/foundry/design_audit_for_design_system_planning)
* [The Full Stack Design System](https://www.intercom.com/blog/the-full-stack-design-system/)
* TODO: [Design Systems: Step-by-Step Guide to Creating Your Own](https://www.uxpin.com/create-design-system-guide/)
* TODO: [Creating A Design System: Recommended Resources](https://www.uxpin.com/create-design-system-guide/recommended-resources) *reading list*
