# Angular testing tricks
See also https://www.dev6.com/Angular-Unit-Testing-Tips-n-Tricks> for
* overriding template
* mocking activatedRoute

## Unit testing

### How to access subcomponent
From https://stackoverflow.com/questions/40928963/access-debugelement-of-nested-component-when-using-native-view-encapsulation

    describe...
      function subComponentInstance(subComponentSelector: string) {
        const nestedComponentNativeElement = fixture.debugElement.query(By.css(subComponentSelector)).nativeElement;
        const nestedComponentDebugElement = <DebugElement>getDebugNode(nestedComponentNativeElement);
        return nestedComponentDebugElement.componentInstance;
      }
    it...
      expect(subComponentInstance('nw-anmalan').anyValueInComponent).toBe('what you want value to be');

## Approval testing
Untested tool which does not seem to have integration with protractor or karma, but looks promising
https://github.com/AppraiseQA/appraise/blob/master/examples/getting-started.md
