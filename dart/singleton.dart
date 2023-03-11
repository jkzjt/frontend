class FileSystemManager {
	static final FileSystemManager _instance = FileSystemManager._internal();
	
	factory FileSystemManager() {
		return _instance;
	}
	
	FileSystemManager._internal(){
	
	}
	
	void openFile(){}
	void WriteFile(){}
}

void main() {
	print(FileSystemManager().hashCode == FileSystemManager().hashCode);
}