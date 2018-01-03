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
