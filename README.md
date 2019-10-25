# Chef
Chef - A configuration management tool

## Recipes and Cookbooks

### Recipes
A recipe is a provisioning script written in pure Ruby along with its own Chef language (DSL: Domain Specific Language).
These live in the recipe folders

### Cookbook
Holds many recipes

### Test Kitchen
- Creates an env. for testing the cookbook
- Runs the chef code against the environment to provision it
- Run unit tests (test the code) and integration tests suites to ensure that the environment is correct and standardised (test the environment)
- closes everything down

### Commands to use Chef and Kitchen

- kitchen create (creates a VM)
- Kitchen converge (Run your recipes[provisions])
- Kitchen destroy (Self explanatory!)
- kitchen setup (Set up kitchen for tests)
- kitchen verify (will run test on newly created environment)

#### Creating -> Converge -> setup -> verify -> destroy

this is all done when

    $ kitchen test
is run.

# node

TODO: Enter the cookbook description here.
