package javazero;

import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

public interface TranspilableFile {

	public List<String> toHaxe();

	public Path getPath(Path root) throws IOException;
}
