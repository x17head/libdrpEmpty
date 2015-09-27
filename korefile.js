var solution = new Solution('LibdrpEmpty');
var project = new Project('LibdrpEmpty');
project.setDebugDir('build/windows');
project.addSubProject(Solution.createProject('build/windows-build'));
project.addSubProject(Solution.createProject('C:/HaxeToolkit/haxe/lib/kha/15,8,0'));
project.addSubProject(Solution.createProject('C:/HaxeToolkit/haxe/lib/kha/15,8,0/Kore'));
solution.addProject(project);
return solution;
