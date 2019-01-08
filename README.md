 
## RADICAL CSS FRAMEWORK
 
Radical CSS framework takes advantages of two highly sane and scalable methodologies ITCSS and Atomic CSS. By combining both we have advantages like flexibility, reusability and real world concepts. It can also further be combined with other methodologies like BEM, BEM-IT and can use preprocessors like SASS, LESS etc.

Being flexible has its advantage, as we can use BEM to have a more verbose and declarative naming convention.

## WHY RADICAL CSS?

In most large scale projects maintaining CSS is a daunting task. To ensure that the css is scalable, flexible, reusable and managable, you need a framework which can memic real world concepts. Hence presenting Radical CSS.

Radical CSS involves visualizing the entire css as a layered inverted triangle consisting of Atoms, Molecules, Organisms, Pages and Templates, etc. This hierarchical structure helps in ordering your css in most effective and least wasteful way.

It can be used with preprocessors or without them and is compatible with CSS methodologies like BEM, SMACSS or OOCSS

Radical CSS consists of 9 layers as follow:

**Layers**
1.	Settings
2.	Tools
3.	Generic
4.	Elements (Similar to Atoms)
5.	Modules (Similar to Molecules)
6.	Components (Similar to Organisms)
7.	Trumps
8.	Templates 
9.	Pages

**Settings** - This holds any global settings for your project. Examples of global settings might be things like the base font size, colour palettes, config (for example, $environment: dev;) and so on.

**Tools** – This contains the globally available tooling like mixins and functions. Any mixin that does not need accessing globally would belong in the partial to which it relates.

**Generic** - The Generic layer is the first one that actually produces any CSS. It houses very high-level, far reaching styles. This layer is seldom modified, and is usually the same across any projects you work on. It contains things like Normalize.css, global box-sizing rules, CSS resets and so on. The Generic layer affects a lot of the DOM, hence it being nice and wide in the Triangle model, and occurring very early on.

**Elements** – This contains the bare unclassed HTML elements like the H2, LABEL, etc. It being a less generic but still covers a wide range, hence its position. Once the styles are defined the deviations need to be implemented using classes.



**Note** - All the above layers put together form the abstract framework for creating more detailed and precise pages.



**Modules** - This is the first layer in which we find class-based selectors. These are concerned with styling non-cosmetic design patterns, or 'objects'. This layer affects less of the DOM than the last layer, has a higher specificity, and is slightly more explicit in that we are now targeting sections of the DOM with classes. This draws similarity to molecules which are formed from Atoms.

**Components** – Like Organisms which are formed from molecules, Components are based out of modules. Groups of modules put together to form a relatively complex section of the user interface. Going down from here the layers are more specific to the application being developed.

**Trumps** - This layer beats – or 'trumps' – all other layers, and has the power to override anything at all that has gone before it. It is inelegant and heavy-handed, and contains utility and helper classes, hacks and overrides.
A lot of the declarations in this layer will carry “!important” (e.g. .text-center { text-align: centre !important; }). This is the highest specificity layer – it includes the most explicit types of rule, with the most narrow focus. This layer forms the point of the Triangle.

**Templates** – These are composed of groups of components put together to form pages. It is where we start seeing the layout or the design being shaped. 

**Pages** – These are formed from various templates put together. The placeholders are replaced with actual images as per the design. Pages are the highest level of fidelity.


**settings, Tools, Generic, Elements**  - These form the abstract framework which can be common for all projects
**Modules, Components, Trumps, Template, Pages** - These are more specific to projects as not all projects are similar in design.

When these methodologies are combined we get a solid, scalable, flexibale and reusable framework.

An example main.scss file with the above approach would look somethign like this.

```css
@import "settings.global";
@import "settings.colors";

@import "tools.functions";
@import "tools.mixins";

@import "generic.box-sizing";
@import "generic.normalize";

@import "elements.headings";
@import "elements.links";

@import "modules.wrappers";
@import "modules.grid";

@import "components.site-nav";
@import "components.buttons";
@import "components.carousel";
@import "trumps.clearfix";
@import "trumps.utilities";
@import "trumps.ie8";


```

This ensure that each layers contain css of:
* Similar specificity
* Similar explicitness
* Similar reach

This approach would give us a much more manageable holistic CSS architecture which can be used in large scale projects


## Advantages

**Objects reusability for fast development**
	Helps in building a library of reusable components to allow fast frontend development. UI would then be composed of generic objects and project specific components.

**Flexibility**
	It is quite flexible in terms of your workflow and tools. It can be combined with any of the leading standard methodologies like BEM, OOCSS, SMACSS etc.

**File size and styles duplication**
	It helps in keeping your file size at the minimal and avoids in style duplication.
	
provides a clear methodology for crafting design systems. Clients and team members are able to better appreciate the concept of design systems by actually seeing the steps laid out in front of them.

Gives us the ability to traverse from abstract to concrete. Because of this, we can create systems that promote consistency and scalability while simultaneously showing things in their final context.

## Aplication in Projects

The framework is best used in caseses where the project is a fresh start. It can also be used in existing projects but efforts would be involved in refactoring the existing css and representing them in different layers.

## Compatibility with other frameworks

Every framework in the market has a varied purposes so does RadicalCSS. They have different folder structures and have different naming convenctions. But most of the frameworks have a set of styles which when inherited would require to be overriden. This ends up in lot of styles not being used thus creating a bloat.

RadicalCSS in general does not focus on forcing a ui style, it rather shows you how to use css in a more meaningful way, such that it can be scaled, re-used and maintained.

Detailed description with diagram is present in this Doc file [link to Document](https://code.cognizant.com/534003/radicalCSS/blob/master/RadicalCSS.pdf)

