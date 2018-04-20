# Maven commands

# Choose which projects to compile, skip downloads (offline mode), skip tests --> Need For Speed
mvn clean install --projects project1,project2 -o -DskipTests

# Compile everything but one module
mvn clean install -pl "\!project" -DskipTests -T 4  
