import checkIfElementExists from '../lib/checkIfElementExists';

/**
 * Perform an click action on the given element
 * @param  {String}   finder    Type of the element by text
 * @param  {String}   action  The action to perform (click or doubleClick)
 */
export default (
    finder: 'text',
    action: 'click' | 'doubleClick',
) => {
    /**
     * Element to perform the action on
     * @finder {String}
     */
    const finderSelector = `//*[contains(text(),'${finder}')]`;

    /**
     * The method to call on the browser object
     * @action {String}
     */
    const method = (action === 'click') ? 'click' : 'doubleClick';

    checkIfElementExists(finderSelector);

    $(finderSelector)[method]();
};
