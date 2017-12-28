# Angular testing tricks

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
